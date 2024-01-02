function mergeAlternately(word1: string, word2: string): string {
  let result: string[] = [];
  for (let i = 0; i < word1.length; i++) {
    result.push(word1[i]);
    if (i < word2.length) {
      result.push(word2[i]);
    }
  }
  if (word2.length > word1.length) {
    result.push(word2.substring(word1.length));
  }
  return result.join('');
};