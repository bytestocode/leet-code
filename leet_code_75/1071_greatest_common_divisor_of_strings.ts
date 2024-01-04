function gcdOfStrings(str1: string, str2: string): string {
  if (str1 + str2 !== str2 + str1) {
    return "";
  }

  function GCD(a: number, b: number): number {
    if (a % b === 0) return b;
    return GCD(b, a % b);
  }

  const length: number = GCD(str1.length, str2.length);

  return str2.slice(0, length);
};