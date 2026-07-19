class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        nums.sort()
        res=set()
        i=0
        while i<len(nums)-2:
            tsum=0-nums[i]
            l,r=i+1,len(nums)-1
            while l<r:
                test=nums[l]+nums[r]
                if test==tsum:
                    res.add((nums[i],nums[l],nums[r]))
                    l+=1
                    r-=1
                elif test<tsum:
                    l+=1
                else:
                    r-=1
            i+=1
        return [list(triplet) for triplet in res]