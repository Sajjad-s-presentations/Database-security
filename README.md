# Database security

## PHP

## MD5

The MD5 message-digest algorithm is a widely used hash function producing a 128-bit hash value. MD5 was designed by Ronald Rivest in 1991 to replace an earlier hash function MD4, and was specified in 1992 as RFC 1321.

MD5 can be used as a checksum to verify data integrity against unintentional corruption. Historically it was widely used as a cryptographic hash function; however it has been found to suffer from extensive vulnerabilities. It remains suitable for other non-cryptographic purposes, for example for determining the partition for a particular key in a partitioned database, and may be preferred due to lower computational requirements than more recent Secure Hash Algorithms.

```
d131dd02c5e6eec4 693d9a0698aff95c 2fcab58712467eab 4004583eb8fb7f89
55ad340609f4b302 83e488832571415a 085125e8f7cdc99f d91dbdf280373c5b
d8823e3156348f5b ae6dacd436c919c6 dd53e2b487da03fd 02396306d248cda0
e99f33420f577ee8 ce54b67080a80d1e c69821bcb6a88393 96f9652b6ff72a70
```
## sha256
این پروتکل، داده‌ها را به قطعات 64 بایتی (512 بیت) تقسیم کرده و با رمزنگاری میکسینگ، درنهایت یک هش 256 بیتی تولید می‌نماید؛ یعنی یک خروجی 16 کلمه‌ای از داده‌های اولیه ایجاد می‌گردد. اندازه هر بلاک در این الگوریتم 64 بایت، حداکثر طول پیام 33 بایت، اطلاعات خلاصه‌سازی پیام 32 بایت، اندازه کلمات 4 بایت و پارامتر داخلی طول 32 بایت است و در آن یک چرخه 64 بار تکرار می‌شود. لازم به ‌ذکر است که با این الگوریتم تقریبا می‌توان 140 مگابایت را در هر ثانیه پردازش کرد و متد ساختاری آن Merkle-Damgard می‌باشد.

## password_hash


