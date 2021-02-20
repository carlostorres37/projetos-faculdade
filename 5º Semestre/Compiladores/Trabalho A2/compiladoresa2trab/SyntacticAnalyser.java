/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compiladoresa2trab;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Anton
 */
public class SyntacticAnalyser {
    
    Deque<Character> stack = new ArrayDeque<>();
    Map<Character, Character> mapper = new HashMap<>();

    public SyntacticAnalyser() {
        mapper.put(')', '(');
        mapper.put(']', '[');
        mapper.put('}', '{');
    }
    
    public boolean validateExpression(String expression) {
        stack.clear();
        
        for(char c : expression.toCharArray()) {
            if(mapper.containsValue(c))
                stack.push(c);
            else if (mapper.containsKey(c))
                if(stack.isEmpty() || !isCorrespondingCharacter(c))
                    return false;
        }
        
        if(stack.isEmpty())
            return true;
        else
            return false;
    }
    
    private boolean isCorrespondingCharacter(char c) {
        return mapper.get(c).equals(stack.pop());
    }
}
