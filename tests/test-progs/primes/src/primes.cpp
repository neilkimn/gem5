#include <bits/stdc++.h>
using namespace std;
 
void SieveOfEratosthenes(int n)
{
    // Create a boolean array "prime[0..n]" and initialize
    // all entries it as true. A value in prime[i] will
    // finally be false if i is Not a prime, else true.
    bool prime[n+1];
    memset(prime, true, sizeof(prime));
 
    for (int p=2; p*p<=n; p++)
    {
        // If prime[p] is not changed, then it is a prime
        if (prime[p] == true)
        {
            // Update all multiples of p
            for (int i=p*2; i<=n; i += p)
                prime[i] = false;
        }
    }
 
    int cnt = 0;
    // Print all prime numbers
    for (int p=2; p<=n; p++)
       if (prime[p])
          cnt++;
    cout << "number of primes: " << cnt << endl;
}
 
// Driver Program to test above function
int main()
{
    int n = 1000000;
    SieveOfEratosthenes(n);
    return 0;
}
