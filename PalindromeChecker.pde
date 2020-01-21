public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (reverse(cleanUp(word)).equals(cleanUp(word)))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int last = str.length()-1;
    for (int i = last; i >= 0; i--)
      sNew += str.substring(i,i+1);
    return sNew;
}
public String cleanUp(String sString)
{
  String clean = "";
  for (int i = 0; i < sString.length(); i++)
    if (Character.isLetter(sString.charAt(i)) == true && sString.charAt(i) != ' ')
      clean += sString.charAt(i);
  return clean.toLowerCase();
}


