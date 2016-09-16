
from collections import defaultdict
file = open('p054_poker.txt', 'r')
wins = 0
translater = {
    'T': 10,
    'J': 11,
    'Q': 12,
    'K': 13,
    'A': 14
}

# high:0,
# pair: 100
# two pair: 200
# 3 kind : 300
# straightL 400
# flush: 500
# full hosue: 600
# 4 kind: 700
#  straight flush: above

def convert(val):
    if val in translater:
        return translater[val]
    return val

def score(hand):
    value = 0
    # check for Flush
    flush = False
    if len({card[1] for card in hand}) == 1:
        value += 500
        flush = True
    # check for Straight
    cards = sorted([int(convert(card[0])) for card in hand])
    straight = True
    for i in range(len(cards)-1):
        if cards[i] != cards[i+1]-1:
            straight = False
            break
    if straight:
        value += 400
    if straight or flush:
        return value

    repeats = defaultdict(int)
    for card in cards:
        repeats[card] += 1


    count_pairs = [{'card': card, 'repeats':repeats[card]} for card in repeats]
    count_pairs = sorted(count_pairs, key = lambda c: c['card'])
    first = count_pairs[0]['repeats']
    second = count_pairs[1]['repeats']
    top_card = count_pairs[0]['card']
    # Check 4 of a kind
    if first == 4:
        return 700 + top_card
    elif first == 3:
        # Check full house
        if second == 2:
            return 600 + top_card
        else:
            # Check 3 of a kind
            return 300 + top_card
    elif first == 2:
        if second == 2:
            # Check two pair
            return 200
        else:
            # Check pair
            return 100 + top_card
    else:
        # high card
        return top_card

def tie_breaker(hand_one, hand_two):
    cards_one = list(reversed(sorted([card[0] for card in hand_one])))
    cards_two = list(reversed(sorted([card[0] for card in hand_two])))
    for i in range(5):
        if cards_one[i] > cards_two[i]:
            return True
        elif cards_one[i] < cards_two[i]:
            return False

for line in file:
    player_one = line.split(' ')[0:5]
    player_two = line.split(' ')[5:10]
    score_one = score(player_one)
    score_two = score(player_two)
    if (score_one==200) and (score_two==200):
        print('double')
        cards_one = sorted([int(convert(card[0])) for card in player_one])
        cards_two = sorted([int(convert(card[0])) for card in player_two])
        print(cards_one)
        print(cards_two)
    elif score_one > score_two:
        wins += 1
    elif score_one == score_two:
        if tie_breaker(player_one, player_two):
            wins+= 1
print (wins)
