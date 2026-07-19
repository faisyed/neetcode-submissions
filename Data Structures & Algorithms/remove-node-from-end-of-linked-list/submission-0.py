# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

class Solution:
    def removeNthFromEnd(self, head: Optional[ListNode], n: int) -> Optional[ListNode]:
        def reverse(head):
            cur,prev=head,None
            while cur:
                tp=cur.next
                cur.next=prev
                prev=cur
                cur=tp
            return prev
        head=reverse(head)
        c=head
        prev=None
        for _ in range(n-1):
            prev=c
            c=c.next
        if prev is None:
            head=c.next
        else:
            prev.next=c.next
        return reverse(head)
                