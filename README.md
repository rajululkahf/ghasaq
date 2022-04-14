[Alyal](https://codeberg.org/rajululkahf/alyal) is a file encryption and
decryption tool based on [Ġasaq](https://codeberg.org/rajululkahf/ghasaq)
and [Băhēm](https://codeberg.org/rajululkahf/baheem).

## Overview

This paper proposes Ġasaq; a provably secure key derivation method that,
when given access to a true random number generator (TRNG), allows
communicating parties, that have a pre-shared secret password p, to agree
on a secret key k that is indistinguishable from truly random numbers with
a guaranteed entropy of min(H(p), |k|).

Ġasaq's security guarantees hold even in a post-quantum world under
Grover's algorithm, or even if it turns out that P = NP. Such strong
security guarantees, that are similar to those of the one time pad (OTP),
became attractive after the introduction of Băhēm; a similarly provably
secure symmetric cipher that is strong enough to shift cipher's security
bottleneck to the key derivation function.

State of art key derivation functions such as the PBKDF, or even
memory-hard variants such as Argon2, are not provably secure, but rather
not fully broken yet.  They do not guarantee against needlessly losing
password entropies; that is, the output key could have an entropy lower
than password's entropy, even if such entropy is less than key's bit
length. In addition to assuming that P != NP, and, even then, getting their
key space square-rooted under Grover's algorithm---none of which are
limitations of Ġasaq.

Using such key derivation functions, as the PBKDF or Argon2, is acceptable
with conventional ciphers, such as ChaCha20 or AES, as they, too, suffer
the same limitations, hence none of them are bottlenecks for the other.
Similarly to how a glass door is not a security bottleneck for a glass
house.

However, a question is:  why would a people secure their belongings in a
glass made structure, to justify a glass door, when they can use a
re-enforced steel structure at a similar cost?  This is where Ġasaq comes
to offer Băhēm the re-enforced steel door that matches its security.
