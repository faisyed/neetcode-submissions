# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

class Solution:
    def reorderList(self, head: Optional[ListNode]) -> None:
        #middle of the linked list
        s,f=head,head.next
        while f and f.next:
            s=s.next
            f=f.next.next
        second=s.next
        #Reverse the second half
        prev=s.next=None
        while second:
            tp=second.next
            second.next=prev
            prev=second
            second=tp
        #Merge 2 halves
        first,second=head,prev
        while second:
            t1,t2=first.next,second.next
            first.next=second
            second.next=t1
            first,second=t1,t2