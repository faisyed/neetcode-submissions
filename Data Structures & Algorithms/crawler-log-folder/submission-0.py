from collections import deque

class Solution:
    def minOperations(self, logs: List[str]) -> int:
        st = deque()
        for op in logs:
            if op == "./":
                pass
            elif op == "../":
                if len(st)>0:
                    st.pop()
            else:
                st.append(op)
        return len(st)