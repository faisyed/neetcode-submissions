from collections import deque

class Solution:
    def isValid(self, s: str) -> bool:
        mp = {')':'(',']':'[','}':'{'}
        st = deque()
        for ch in s:
            if ch not in mp:
                st.append(ch)
            else:
                if not st or mp[ch]!=st[-1]:
                    return False
                st.pop()
        return len(st)==0