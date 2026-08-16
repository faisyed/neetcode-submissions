from collections import deque

class Solution:
    def calPoints(self, operations: List[str]) -> int:
        st = deque()
        for op in operations:
            if op == "+":
                v1,v2 = st[-2],st[-1]
                st.append(v1+v2)
            elif op == "D":
                v = st[-1]
                st.append(v*2)
            elif op == "C":
                st.pop()
            else:
                st.append(int(op))
        return sum(st)