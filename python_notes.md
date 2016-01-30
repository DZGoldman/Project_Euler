#### About
- Created in 1991
- Has a single 'dictator' who decides what stays
- Open source (free)
- High level (intepreted, not compiled ie, there's no extra step of translation)
  - Other languages first translate everything
- dynamic (things that would normally happen at compile time happen at run time instead)

#### Benefits
- Lots of built in libraries
- Clean syntax, designed to be easy for humans/ look like english
- Whitespace matters
- easy to install packages with pip
- Dynamic typing: don't need to specify the type of an object

#### Downsides
- Slow (on par with Ruby)

#### Syntax/Terms (differences from JS)
- No 'var' for variables
- Comments:
```python
#comment
```
- 'Lists' are JS Arrays
- 'Maps/Dictionaries' are JS Object Literals
- if:
```python
x>5
if x>4:
    print 'that number was totally greater than 4 wow!'
elif x<4
    print 'that number was less than 4 sweet!''
else:
    print 'that number was 4'
```
  - note the colon, and the indenting (convention for indenting is 4 spaces, but all that matters is that it's different/consistent)
    - **There is always a colon before indenting**
- looping:
```python
l = ['this', 'aint', 'ruby', 'kiddo']
for string in l:
    print string
```
- In Python 3, print requires parens:
```python
print ("hello cruel world")
```
  - That's, apparently, the most important difference
- snake_casing is standard for variables
- square brackets  to retrieve value from a map (not a dot):
```python
  some_map['key']
```
- .append() is .push() in JS:
```python
  ['Make', 'America', 'Great'].append('Again')
```
  - append returns nothing
- Delete from list:
```python
my_list=['bacon', 'bacon', 'LETTUCE??', 'bacon']
del mylist[2]
```
- .sort() sorts #s in ascending order or strings alphabetically
- functions:
```python
def cat_noise(arg):
    return ('arg')
cat_noise('meow')
```
- Booleans are capitalized; (True and False)

### Other
- You can run a python text file, say 'test.py' from your console, a la ruby, like this:
```python
python test.py
```
- twitter api package
```console
pip install TwitterAPI
```
- Other Libaries to look into:
- Web Dev
  - DJango
  - Flask
  - SQL Alchemy

- Data Analysis
  - Panda
  - statsmodel
  - scikits-learn
- Math/sci
  - Numpy/Scimpy
  -

- / escape
- len('string') : lenth
- 'string'.upper() or 'string'.lower()
- str(4) makes it a string
- need to convert numbers t string explicitely
- %s for string concat
- raw_input('string')
- can import packages easily with import
  - datetime.now()
  - and or and not: nice. No falsineess or truthiness, i think
