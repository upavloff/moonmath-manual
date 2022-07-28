r"""
This file was *autogenerated* from main-moonmath.tex with sagetex.sty
version 2021/10/16 v3.6. It contains the contents of all the
sageexample environments from main-moonmath.tex. You should be able to
doctest this file with "sage -t main-moonmath_doctest.sage".

It is always safe to delete this file; it is not used in typesetting your
document.

Sage commandline, line 102::

sage: ZZ # A sage notation for the integers
sage: NN # A sage notation for the natural numbers
sage: QQ # A sage notation for the rational numbers
sage: ZZ(5) # Get an element from the integers
sage: ZZ(5) + ZZ(3)
sage: ZZ(5) * NN(3)
sage: ZZ.random_element(10**50)
sage: ZZ(27713).str(2) # Binary string representation
sage: NN(27713).str(2) # Binary string representation
sage: ZZ(27713).str(16) # Hexadecimal string representation

Sage commandline, line 130::

sage: n = NN(504)
sage: factor(n)

Sage commandline, line 201::

sage: ZZ(-17) // ZZ(4) # Integer quotient
sage: ZZ(-17) % ZZ(4) # remainder
sage: ZZ(4).divides(ZZ(-17)) # self divides other
sage: ZZ(4).divides(ZZ(12))

Sage commandline, line 217::

sage: ZZ(-17) // ZZ(-4) # Integer quotient
sage: ZZ(-17) % ZZ(-4) # remainder
sage: ZZ(-17).quo_rem(ZZ(-4)) # not Euclidean division

Sage commandline, line 235::

sage: ZZ(143785).quo_rem(ZZ(17))
sage: ZZ(143785) == ZZ(8457)*ZZ(17) + ZZ(16) # check

Sage commandline, line 301::

sage: ZZ(12).xgcd(ZZ(5)) # (gcd(a,b),s,t)

Sage commandline, line 385::

sage: ZZ(137).gcd(ZZ(64))
sage: ZZ(64)^ ZZ(137) % ZZ(137) == ZZ(64) % ZZ(137)
sage: ZZ(64)^ ZZ(137-1) % ZZ(137) == ZZ(1) % ZZ(137)
sage: ZZ(1918).gcd(ZZ(137))
sage: ZZ(1918)^ ZZ(137) % ZZ(137) == ZZ(1918) % ZZ(137)
sage: ZZ(1918)^ ZZ(137-1) % ZZ(137) == ZZ(1) % ZZ(137)

Sage commandline, line 421::

sage: (ZZ(7)* (ZZ(2)*ZZ(4) + ZZ(21)) + ZZ(11))  % ZZ(6) == (ZZ(4) - ZZ(102))  % ZZ(6)
sage: (ZZ(7)* (ZZ(2)*ZZ(76) + ZZ(21)) + ZZ(11))  % ZZ(6) == (ZZ(76) - ZZ(102))  % ZZ(6)

Sage commandline, line 496::

sage: CRT_list([4,1,3,0], [7,3,5,11])

Sage commandline, line 576::

sage: Z6 = Integers(6)
sage: Z6(2) + Z6(5)
sage: Z6(7)*(Z6(2)*Z6(4)+Z6(21))+Z6(11) == Z6(4) - Z6(102)

Sage commandline, line 646::

sage: ZZ(6).xgcd(ZZ(5))

Sage commandline, line 694::

sage: Z5 = Integers(5)
sage: Z5(3)**(5-2)
sage: Z5(3)**(-1)
sage: Z5(3)**(5-2) == Z5(3)**(-1)

Sage commandline, line 763::

sage: Zx = ZZ['x'] # integer polynomials with indeterminate x
sage: Zt.<t> = ZZ[] # integer polynomials with indeterminate t
sage: Zx
sage: Zt
sage: p1 = Zx([17,-4,2])
sage: p1
sage: p1.degree()
sage: p1.leading_coefficient()
sage: p2 = Zt(t^23)
sage: p2
sage: p6 = Zx([0])
sage: p6.degree()

Sage commandline, line 798::

sage: Z6 = Integers(6)
sage: Z6x = Z6['x']
sage: Z6x
sage: p1 = Z6x([5,-4,2])
sage: p1
sage: p1 = Z6x([17,-4,2])
sage: p1
sage: Z6x(x-2)*Z6x(x+3)*Z6x(x-5) == Z6x(x^3 + 2*x^2 + x)

Sage commandline, line 827::

sage: Zx = ZZ['x']
sage: p1 = Zx([17,-4,2])
sage: p7 = Zx(x-2)*Zx(x+3)*Zx(x-5)
sage: p1(ZZ(2))
sage: p7(ZZ(-6)) == ZZ(-264)

Sage commandline, line 844::

sage: Z6 = Integers(6)
sage: Z6x = Z6['x']
sage: p1 = Z6x([5,-4,2])
sage: p1(Z6(2)) == Z6(5)

Sage commandline, line 885::

sage: Zx = ZZ['x']
sage: P = Zx([2,-4,5])
sage: Q = Zx([5,0,-2,1])
sage: P+Q == Zx(x^3 +3*x^2 -4*x +7)
sage: P*Q == Zx(5*x^5 -14*x^4 +10*x^3+21*x^2-20*x +10)

Sage commandline, line 905::

sage: Z6x = Integers(6)['x']
sage: P = Z6x([2,-4,5])
sage: Q = Z6x([5,0,-2,1])
sage: P+Q == Z6x(x^3 +3*x^2 +2*x +1)
sage: P*Q == Z6x(5*x^5 +4*x^4 +4*x^3+3*x^2+4*x +4)

Sage commandline, line 964::

sage: Zx = ZZ['x']
sage: A = Zx([-9,0,0,2,0,1])
sage: B = Zx([-1,4,1])
sage: Q = Zx([-80,19,-4,1])
sage: P = Zx([-89,339])
sage: A == Q*B + P

Sage commandline, line 999::

sage: Zx = ZZ['x']
sage: p = Zx(x^2-3)
sage: p.factor()

Sage commandline, line 1023::

sage: Zx = ZZ['x']
sage: p = Zx(x^7 + 3*x^6 + 3*x^5 + x^4 - x^3 - 3*x^2 - 3*x - 1)
sage: p.roots()
sage: p.factor()

Sage commandline, line 1087::

sage: Qx = QQ['x']
sage: S=[(0,4),(-2,1),(2,3)]
sage: Qx.lagrange_polynomial(S)

Sage commandline, line 1116::

sage: F5 = GF(5)
sage: F5x = F5['x']
sage: S=[(0,4),(-2,1),(2,3)]
sage: F5x.lagrange_polynomial(S)

Sage commandline, line 453::

sage: import hashlib
sage: test = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
sage: empty_string = ""
sage: binary_string = empty_string.encode()
sage: hasher = hashlib.sha256(binary_string)
sage: result = hasher.hexdigest()
sage: type(result) # sage represents digests as strings
sage: d = ZZ('0x'+ result) # conversion to an integer
sage: d.str(16) == test # hash is equal to test vector
sage: d.str(16) # hexadecimal representation
sage: d.str(2) # binary representation
sage: d.str(10) # decimal representation

Sage commandline, line 538::

sage: import hashlib
sage: def SHA256_H(x):
....:     Z5 = Integers(5) # define the group type
....:     hasher = hashlib.sha256(x) # Compute SHA256
....:     digest = hasher.hexdigest()
....:     z = ZZ(digest, 16) # cast into integer
....:     z_bin = z.digits(base=2, padto=256) # cast to 256bits
....:     return Z5(2)^z_bin[0] * Z5(3)^z_bin[1]
sage: SHA256_H(b"") # evaluate on empty string
sage: SHA256_H(b"SHA") # possible images are {1,2,3}
sage: SHA256_H(b"Math")

Sage commandline, line 600::

sage: ZZ

Sage commandline, line 665::

sage: ZZ['x']

Sage commandline, line 672::

sage: Integers(6)

Sage commandline, line 743::

sage: import hashlib
sage: def Hash5(x):
....:     Z16 = Integers(16)
....:     hasher = hashlib.sha256(x) # compute SHA56
....:     digest = hasher.hexdigest()
....:     d = ZZ(digest, base=16) # cast to integer
....:     d = d.str(2)[-4:] # keep 5 least significant bits
....:     d = ZZ(d, base=2) # cast to integer
....:     return Z16(d) # cast to Z16
sage: Hash5(b'')

Sage commandline, line 800::

sage: import hashlib
sage: Z23 = Integers(23)
sage: def Hash_mod23(x, k2):
....:     hasher = hashlib.sha256(x.encode('utf-8')) # Compute SHA256
....:     digest = hasher.hexdigest()
....:     d = ZZ(digest, base=16) # cast to integer
....:     d = d.str(2)[-k2:] # keep k2+1 LSB
....:     d = ZZ(d, base=2) # cast to integer
....:     return Z23(d) # cast to Z23

Sage commandline, line 882::

sage: QQ

Sage commandline, line 902::

sage: F2 = GF(2)
sage: F2(1) # Get an element from GF(2)
sage: F2(1) + F2(1) # Addition
sage: F2(1) / F2(1) # Division

Sage commandline, line 1189::

sage: Z3 = GF(3) # prime field
sage: Z3t.<t> = Z3[] # polynomials over Z3
sage: P = Z3t(t^2+1)
sage: P.is_irreducible()
sage: F3_2.<t> = GF(3^2, name='t', modulus=P) # Extension field F_3^2
sage: F3_2
sage: F3_2(t+2)*F3_2(2*t+2) == F3_2(2)
sage: F3_2(2*t+2)^(-1) # multiplicative inverse
sage: # verify our solution to (t+1)(x^2 + (2t+2)) = 2
sage: F3_2(t+1)*(F3_2(t)**2 + F3_2(2*t+2)) == F3_2(2)
sage: F3_2(t+1)*(F3_2(2*t)**2 + F3_2(2*t+2)) == F3_2(2)

Sage commandline, line 51::

sage: F5 = GF(5) # define the base field
sage: a = F5(2) # parameter a
sage: b = F5(4) # parameter b
sage: # check discriminant
sage: F5(6)*(F5(4)*a^3+F5(27)*b^2) != F5(0)
sage: # short Weierstrass curve over field F5
sage: E = EllipticCurve(F5,[a,b]) # y^2 == x^3 + ax +b
sage: # point on a curve
sage: P = E(0,2) # 2^2 == 0^3 + 2*0 + 4
sage: P.xy() # affine coordinates
sage: INF = E(0) # point at infinity
sage: try:  # point at infinity has no affine coordinates
....:     INF.xy()
....: except ZeroDivisionError:
....:     pass
sage: P = E.plot() # create a plotted version

Sage commandline, line 132::

sage: p = 115792089237316195423570985008687907853269984665640564039457584007908834671663
sage: # Hexadecimal representation
sage: p.str(16)
sage: p.is_prime()
sage: p.nbits()
sage: Fp = GF(p)
sage: secp256k1 = EllipticCurve(Fp,[0,7])
sage: r = secp256k1.order() # number of elements
sage: r.str(16)
sage: r.is_prime()
sage: r.nbits()

Sage commandline, line 322::

sage: F5 = GF(5)
sage: E1 = EllipticCurve(F5,[1,1])
sage: INF = E1(0) # point at infinity
sage: P1 = E1(0,1)
sage: P2 = E1(4,2)
sage: P3 = E1(0,4)
sage: R1 = E1(2,1)
sage: R2 = E1(3,4)
sage: R1 == P1+P2
sage: INF == P1+P3
sage: R2 == P2+P2
sage: R2 == 2*P2
sage: P3 == P3 + INF

Sage commandline, line 344::

sage: F13 = GF(13)
sage: TJJ = EllipticCurve(F13,[8,8])
sage: P = TJJ(4,0)
sage: INF = TJJ(0) # Point at infinity
sage: INF == P+P
sage: INF == 2*P

Sage commandline, line 355::

sage: P = secp256k1.random_point()
sage: Q = secp256k1.random_point()
sage: R = P + Q
sage: P.xy()
sage: Q.xy()
sage: R.xy()

Sage commandline, line 456::

sage: F13 = GF(13)
sage: TJJ = EllipticCurve(F13,[8,8])
sage: P = TJJ(5,11)
sage: INF = TJJ(0)
sage: 10*P == INF
sage: Q = TJJ(9,4)
sage: R = TJJ(4,0)
sage: 10*Q == R

Sage commandline, line 739::

sage: F13 = GF(13)
sage: L_MTJJ = []
....: for x in F13:
....:     for y in F13:
....:         if F13(7)*y^2 == x^3 + F13(6)*x^2 +x:
....:             L_MTJJ.append((x,y))
sage: MTJJ = Set(L_MTJJ)
sage: # does not compute the point at infinity

Sage commandline, line 787::

sage: # Compute I of Montgomery form:
sage: L_I_MTJJ = []
sage: for (x,y) in L_MTJJ: # LMTJJ as defined previously
....:     v = (F13(3)*x + F13(6))/(F13(3)*F13(7))
....:     w = y/F13(7)
....:     L_I_MTJJ.append((v,w))
sage: I_MTJJ = Set(L_I_MTJJ)
sage: # Computation short Weierstrass form
sage: C_WTJJ = EllipticCurve(F13,[8,8])
sage: L_WTJJ = [P.xy() for P in C_WTJJ.points() if P.order() > 1]
sage: WTJJ = Set(L_WTJJ)
sage: # check I(Montgomery) == Weierstrass
sage: WTJJ == I_MTJJ
sage: # check the inverse map I^(-1)
sage: L_IINV_WTJJ = []
sage: for (v,w) in L_WTJJ:
....:     x = F13(7)*(v-F13(4))
....:     y = F13(7)*w
....:     L_IINV_WTJJ.append((x,y))
sage: IINV_WTJJ = Set(L_IINV_WTJJ)
sage: MTJJ == IINV_WTJJ

Sage commandline, line 913::

sage: F13 = GF(13)
sage: L_ETJJ = []
....: for x in F13:
....:     for y in F13:
....:         if F13(3)*x^2 + y^2 == 1+ F13(8)*x^2*y^2:
....:             L_ETJJ.append((x,y))
sage: ETJJ = Set(L_ETJJ)

Sage commandline, line 1031::

sage: p = ZZ(13)
sage: # large prime factor
sage: r = ZZ(5)
sage: k = ZZ(1)
sage: while k < r:  # Fermat's little theorem
....:     if (p^k-1)%r == 0:
....:         break
....:     k=k+1
sage: k
sage: # small prime factor
sage: r = ZZ(2)
sage: k = ZZ(1)
sage: while k < r:  # Fermat's little theorem
....:     if (p^k-1)%r == 0:
....:         break
....:     k=k+1
sage: k

Sage commandline, line 1057::

sage: p = ZZ(115792089237316195423570985008687907853269984665640564039457584007908834671663)
sage: r = ZZ(115792089237316195423570985008687907852837564279074904382605163141518161494337)
sage: k = ZZ(1)
sage: while k < 1000:
....:     if (p^k-1)%r == 0:
....:         break
....:     k=k+1
sage: k

Sage commandline, line 1085::

sage: F5= GF(5)
sage: F5t.<t> = F5[]
sage: P_MOD_2 = F5t(t^2+2)
sage: P_MOD_2.is_irreducible()
sage: F5_2.<t> = GF(5^2, name='t', modulus=P_MOD_2)
sage: E1F5_2 = EllipticCurve(F5_2,[1,1])
sage: E1F5_2.order()

Sage commandline, line 1144::

sage: INF = E1F5_2(0) # Point at infinity
sage: L_E1_3 = []
sage: for p in E1F5_2:
....:     if 3*p == INF:
....:         L_E1_3.append(p)
sage: E1_3 = Set(L_E1_3) # Full 3-torsion set

Sage commandline, line 1162::

sage: # define the extension field
sage: F13= GF(13) # prime field
sage: F13t.<t> = F13[] # polynomials over t
sage: P_MOD_4 = F13t(t^4+2) # degree 4 irreducible polynomial
sage: P_MOD_4.is_irreducible()
sage: F13_4.<t> = GF(13^4, name='t', modulus=P_MOD_4)
sage: TJJF13_4 = EllipticCurve(F13_4,[8,8]) # TJJ extension
sage: # compute the full 5-torsion
sage: INF = TJJF13_4(0) # point at infinity
sage: L_TJJF13_4_5 = INF.division_points(5) # [5]P == INF
sage: TJJF13_4_5 = Set(L_TJJF13_4_5)
sage: TJJF13_4_5.cardinality() # number of elements

Sage commandline, line 1177::

sage: # define the extension field
sage: P_MOD_3 = F13t(t^3+2) # degree 3 irreducible polynomial
sage: P_MOD_3.is_irreducible()
sage: F13_3.<t> = GF(13^3, name='t', modulus=P_MOD_3)
sage: TJJF13_3 = EllipticCurve(F13_3,[8,8]) # TJJ extension
sage: # compute the 5-torsion
sage: INF = TJJF13_3(0)
sage: L_TJJF13_3_5 = INF.division_points(5) # [5]P == INF
sage: TJJF13_3_5 = Set(L_TJJF13_3_5) # $5$-torsion
sage: TJJF13_3_5.cardinality() # number of elements

Sage commandline, line 1247::

sage: L_G1 = []
sage: for P in E1_3:
....:     PiP = E1F5_2([a.frobenius() for a in P]) # pi(P)
....:     if P == PiP:
....:         L_G1.append(P)
sage: G1 = Set(L_G1)

Sage commandline, line 1258::

sage: L_G2 = []
sage: for P in E1_3:
....:     PiP = E1F5_2([a.frobenius() for a in P]) # pi(P)
....:     pP = 5*P # [5]P
....:     if pP == PiP:
....:         L_G2.append(P)
sage: G2 = Set(L_G2)

Sage commandline, line 1274::

sage: L_TJJ_G1 = []
sage: for P in TJJF13_4_5:
....:     PiP = TJJF13_4([a.frobenius() for a in P]) # pi(P)
....:     if P == PiP:
....:         L_TJJ_G1.append(P)
sage: TJJ_G1 = Set(L_TJJ_G1)

Sage commandline, line 1285::

sage: L_TJJ_G2 = []
sage: for P in TJJF13_4_5:
....:     PiP = TJJF13_4([a.frobenius() for a in P]) # pi(P)
....:     pP = 13*P # [13]P
....:     if pP == PiP: # pi(P) ==[13]P
....:         L_TJJ_G2.append(P)
sage: TJJ_G2 = Set(L_TJJ_G2)

Sage commandline, line 1367::

sage: F13 = GF(13)
sage: F13t.<t> = F13[]
sage: P_MOD_4 = F13t(t^4+2)
sage: F13_4.<t> = GF(13^4, name='t', modulus=P_MOD_4)
sage: TJJF13_4 = EllipticCurve(F13_4,[8,8])
sage: P=TJJF13_4([7,2])
sage: Q=TJJF13_4([9*t^2+7,12*t^3+2*t])
sage: P.weil_pairing(Q,5)

Sage commandline, line 1434::

sage: import hashlib
sage: def try_hash(s,c):
....:     s_1 = s+c # string concatenation
....:     hasher = hashlib.sha256(s_1.encode('utf-8')) # compute SHA256
....:     digest = hasher.hexdigest()
....:     z = ZZ(digest, 16) # cast into integer
....:     z_bin = z.digits(base=2, padto=256) # cast to 256 bits
....:     x = z_bin[0]*2^0 + z_bin[1]*2^1 + z_bin[2]*2^2+z_bin[3]*2^3
....:     return (x,z_bin[4])
sage: try_hash('1110010000','0')

Sage commandline, line 1448::

sage: try_hash('1110010000','1')

Sage commandline, line 1453::

sage: try_hash('1110010000','10')

Sage commandline, line 1462::

sage: P = TJJ_13(12,8)
sage: (4*P).xy()

Sage commandline, line 1529::

sage: p = 115792089237316195423570985008687907853269984665640564039457584007908834671663
sage: r = 115792089237316195423570985008687907852837564279074904382605163141518161494337
sage: t = p + 1 -r
sage: t.nbits()
sage: abs(RR(t)) <= 2*sqrt(RR(p))

Sage commandline, line 1568::

sage: p = 115792089237316195423570985008687907853269984665640564039457584007908834671663
sage: F = GF(p)
sage: j = F(1728)*((F(4)*F(0)^3)/(F(4)*F(0)^3+F(27)*F(7)^2))
sage: j == F(0)

Sage commandline, line 1626::

sage: z = ComplexField(100)(0,1)
sage: z # (0+1i)
sage: elliptic_j(z)
sage: # j-function only defined for positive imaginary arguments
sage: z = ComplexField(100)(1,-1)
sage: try:
....:     elliptic_j(z)
....: except PariError:
....:     pass
sage: # root at (-1+i sqrt(3))/2
sage: z = ComplexField(100)(-1,sqrt(3))/2
sage: elliptic_j(z)
sage: elliptic_j(z).imag().round()
sage: elliptic_j(z).real().round()

Sage commandline, line 1819::

sage: D = -3
sage: p = 115792089237316195423570985008687907853269984665640564039457584007908834671663
sage: r = 115792089237316195423570985008687907852837564279074904382605163141518161494337
sage: t = p+1-r
sage: v_sqr = (4*p - t^2)/abs(D)
sage: v_sqr.is_integer()
sage: v = sqrt(v_sqr)
sage: v.is_integer()
sage: 4*p == t^2 + abs(D)*v^2
sage: v

Sage commandline, line 1836::

sage: F = GF(p)
sage: for c2 in F:
....:     try: # quadratic residue
....:         _ = c2.nth_root(2)
....:     except ValueError: # quadratic non-residue
....:         break
sage: c2
sage: for c3 in F:
....:     try:
....:         _ = c3.nth_root(3)
....:     except ValueError:
....:         break
sage: c3

Sage commandline, line 1853::

sage: C1 = EllipticCurve(F,[0,1])
sage: C1.order() == r
sage: C2 = EllipticCurve(F,[0,c2^3])
sage: C2.order() == r
sage: C3 = EllipticCurve(F,[0,c3^2])
sage: C3.order() == r
sage: C4 = EllipticCurve(F,[0,c3^2*c2^3])
sage: C4.order() == r
sage: C5 = EllipticCurve(F,[0,c3^(-2)])
sage: C5.order() == r
sage: C6 = EllipticCurve(F,[0,c3^(-2)*c2^3])
sage: C6.order() == r

Sage commandline, line 1878::

sage: b1=86844066927987146567678238756515930889952488499230423029593188005931626003754
sage: for b2 in F:
....:     try:
....:         d = (b2/b1).nth_root(3)
....:         try:
....:             _ = d.nth_root(2)
....:             if d != 0:
....:                 break
....:         except ValueError:
....:             pass
....:     except ValueError:
....:         pass
sage: b2

Sage commandline, line 1946::

sage: for k in range(1,42): # Fermat's little theorem
....:     if (43^k-1)%13 == 0:
....:         break
sage: k

Sage commandline, line 1968::

sage: F43 = GF(43)
sage: c2 = F43(5)
....: try: # quadratic residue
....:     c2.nth_root(2)
....: except ValueError: # quadratic non-residue
....:     c2
sage: c3 =F43(36)
....: try:
....:     c3.nth_root(3)
....: except ValueError:
....:     c3

Sage commandline, line 1984::

sage: BLS61 = EllipticCurve(F43,[0,1])
sage: BLS61.order() == 39
sage: BLS62 = EllipticCurve(F43,[0,c2^3])
sage: BLS62.order() == 39
sage: BLS63 = EllipticCurve(F43,[0,c3^2])
sage: BLS63.order() == 39
sage: BLS64 = EllipticCurve(F43,[0,c3^2*c2^3])
sage: BLS64.order() == 39
sage: BLS65 = EllipticCurve(F43,[0,c3^(-2)])
sage: BLS65.order() == 39
sage: BLS66 = EllipticCurve(F43,[0,c3^(-2)*c2^3])
sage: BLS66.order() == 39
sage: BLS6 = BLS63 # our BLS6 curve in the book

Sage commandline, line 2034::

sage: P = BLS6(9,2)
sage: Q = 3*P
sage: Q.xy()
sage: BLS6_13 = []
sage: for x in range(0,13): # cyclic of order 13
....:     P = x*Q
....:     BLS6_13.append(P)

Sage commandline, line 2119::

sage: F43 = GF(43)
sage: F43t.<t> = F43[]
sage: p = F43t(t^6+6)
sage: p.is_irreducible()
sage: F43_6.<v> = GF(43^6, name='v', modulus=p)

Sage commandline, line 2133::

sage: BLS6 = EllipticCurve (F43_6,[0 ,6]) # curve extension
sage: INF = BLS6(0) # point at infinity
sage: for P in INF.division_points(13): # full 13-torsion
....: # PI(P) == [q]P
....:     if P.order() == 13: # exclude point at infinity
....:         PiP = BLS6([a.frobenius() for a in P])
....:         qP = 43*P
....:         if PiP == qP:
....:             break
sage: P.xy()

Sage commandline, line 2152::

sage: Q = BLS6(7*v^2,16*v^3)
sage: BLS6_13_2 = []
sage: for x in range(0,13):
....:     P = x*Q
....:     BLS6_13_2.append(P)

Sage commandline, line 2198::

sage: g1 = BLS6([13,15])
sage: g2 = BLS6([7*v^2, 16*v^3])
sage: g1.weil_pairing(g2,13)

Sage commandline, line 1321::

sage: F13 = GF(13)
sage: F13t.<t> = F13[]
sage: T = F13t((t-5)*(t-7))
sage: A2 = F13t.lagrange_polynomial([(5,1),(7,0)])
sage: A5 = F13t.lagrange_polynomial([(5,0),(7,1)])
sage: T == F13t(t^2 + t + 9)
sage: A2 == F13t(6*t + 10)
sage: A5 == F13t(7*t + 4)

Sage commandline, line 1385::

sage: F13 = GF(13)
sage: F13t.<t> = F13[]
sage: T = F13t(t^2 + t + 9)
sage: P = F13t((2*(6*t+10)+6*(7*t+4))*(3*(6*t+10)+4*(7*t +4))-(11*(7*t+4)+6*(6*t+10)))
sage: P == T
sage: P % T # remainder

Sage commandline, line 1406::

sage: F13 = GF(13)
sage: F13t.<t> = F13[]
sage: T = F13t(t^2 + t + 9)
sage: P = F13t((2*(6*t+10)+8*(7*t+4))*(3*(6*t+10)+4*(7*t+4))-(8*(6*t+10)+11*(7*t+4)))
sage: P == F13t(8*t^2 + 6)
sage: P % T # remainder

"""
