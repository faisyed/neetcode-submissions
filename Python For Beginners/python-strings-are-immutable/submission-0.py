def remove_fourth_character(word: str) -> str:
    s = ''
    for i in range(len(word)):
        if i==3:
            continue
        s+=word[i]
    return s

# do not modify below this line
print(remove_fourth_character("NeetCode"))
print(remove_fourth_character("Hello"))
