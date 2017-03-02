## Sets

Swift provides a third collection type called Set.

A Set is an unordered collection of distinct instances.

This definition sets it apart from an
Array, which is ordered and can accommodate repeated values.

A Set has some similarities to a Dictionary, but it is also a little different. Like a
dictionary, a set’s values are unordered within the collection. Similar to the requirement that a
dictionary’s keys must be unique, Set does not allow repeated values. To ensure that elements
are unique, Set requires that its elements conform to the protocol *hashable*, as a
dictionary’s keys do. However, while dictionary values are accessed via their corresponding
key, a set only stores individual elements, not key-value pairs.

## Unions
```
union(_:)
```
## Intersections
```
intersection(_:)
```
## Disjoint

Set’s ```isDisjoint(with:)``` method returns true or false depending on whether any
members of the set (here, yourSecondBag) are in the sequence provided to
```isDisjoint```’s argument (here, roommatesSecondBag).
