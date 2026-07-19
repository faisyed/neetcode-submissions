class Solution:
    def countBits(self, n: int) -> List[int]:
        arr=[]
        i=0
        while i<=n:
            arr.append(self.countOnes(i))
            i+=1
        return arr
    def countOnes(self,num):
        c=0
        while num:
            num=num&(num-1)
            c+=1
        return c 