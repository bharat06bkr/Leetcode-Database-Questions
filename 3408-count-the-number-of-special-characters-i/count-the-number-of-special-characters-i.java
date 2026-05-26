class Solution 
{
    public int numberOfSpecialChars(String word) 
    {
        Set<Character> s = new HashSet<>();
        for (char ch : word.toCharArray()) 
            s.add(ch);
        int count = 0;
        for (char c = 'a'; c <= 'z'; c++) 
        {
            if (s.contains(c) && s.contains((char) (c - 'a' + 'A'))) 
                count++;
        }
        return count;  
    }
}