class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        mp=defaultdict(int)
        for num in nums:
            mp[num]+=1
        return heapq.nlargest(k,mp.keys(),key=mp.get)