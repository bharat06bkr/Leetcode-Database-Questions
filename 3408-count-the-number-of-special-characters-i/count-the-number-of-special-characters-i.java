class Solution 
{
    public int numberOfSpecialChars(String word) 
    {
        int count=0;
        int h1[]=new int[26];
        int h2[]=new int[26];
        for(char ch:word.toCharArray())
        {
            if(Character.isUpperCase(ch))
                h1[ch-'A']++;
            else
                h2[ch-'a']++;
        } 
        for(int i=0;i<26;i++)
        {
            if(h1[i]>0 && h2[i]>0)
                count++;
        }
        return count;   
    }
}