import java.util.*;

class Solution {
    public String solution(String[] participant, String[] completion) {
        String answer = "";
        Map<String,Integer> map = new HashMap<>();
        
        //참가자들 map에 put
        for(int i=0; i<participant.length; i++){
            if(map.containsKey(participant[i])){
                // 동명이인 있을때 +1
                map.put(participant[i], map.get(participant[i]) +1);
            }else{
                //처음put일때 값 1로 저장
                map.put(participant[i],1);
            }
        }
        //완주자 map에 get
        for(int i =0; i <completion.length; i++){
            map.put(completion[i],map.get(completion[i]) -1);
            // 참가자가 완주했을때 -1 시켜서 0으로 만들기
        }
        
        for(String m : map.keySet()){
            if(map.get(m) > 0){
                //만약 0 이상이면 완주못한 인원
                return m;
            }
        }
        
        return answer;
    }
}