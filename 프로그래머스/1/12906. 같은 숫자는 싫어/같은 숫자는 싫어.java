import java.util.*;

public class Solution {
    public int[] solution(int []arr) {
       
        
        ArrayList<Integer> list = new ArrayList<>();
        int num = arr[0];
         list.add(num);
        for(int i =1; i< arr.length; i++){
       
            if(num != arr[i]){
                list.add(arr[i]);
                num = arr[i];
            }
        }
         int[] answer = new int[list.size()];

        for(int i=0; i < list.size(); i++){
            answer[i] = list.get(i);
        }
        
        // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
        System.out.println("Hello Java" + answer);

        return answer;
    }
}