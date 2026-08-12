from typing import Dict # this adds type hinting for Dict

def count_characters(word: str) -> Dict[str, int]:
    mp = {}
    for ch in word:
        if ch in mp:
            mp[ch] = mp[ch]+1
        else:
            mp[ch] = 1
    return mp

# don't modify below this line
print(count_characters("hello"))
print(count_characters("world"))
print(count_characters("hello world"))
print(count_characters("this is a longer sentence"))
