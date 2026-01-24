import java.util.*;

class Solution {
    public int solution(int[] nums) {
        int answer = 0;
        
        Map<Integer,Integer> map = new HashMap<>();
        
        for(int i =0; i< nums.length; i++){
            if(map.containsKey(nums[i])){
                map.put(nums[i], map.get(nums[i]) +1);
            }else{
                map.put(nums[i], 1);
            }
        }
        
        
        int n2 = nums.length /2;
        
        if(n2 <= map.size()){
            answer = n2;
        }else{
            answer = map.size();
        }
        return answer;
    }
}