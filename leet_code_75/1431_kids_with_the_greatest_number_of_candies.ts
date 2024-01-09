function kidsWithCandies(candies: number[], extraCandies: number): boolean[] {
  let maxCandies = candies[0];
  for (let i = 1; i < candies.length; i++) {
      maxCandies = Math.max(maxCandies, candies[i]);
  }

  const result: boolean[] = [];
  for (let i = 0; i < candies.length; i++) {
      result.push(candies[i] + extraCandies >= maxCandies);
  }

  return result;
};