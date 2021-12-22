r"""
This file was *autogenerated* from main-moonmath.tex with sagetex.sty
version 2020/08/12 v3.5. It contains the contents of all the
sageexample environments from main-moonmath.tex. You should be able to
doctest this file with "sage -t main-moonmath_doctest.sage".

It is always safe to delete this file; it is not used in typesetting your
document.

Sage commandline, line 53::

sage: F5 = GF(5) # define the base field
sage: a = F5(2) # parameter a
sage: b = F5(4) # parameter b
sage: # check non-sigularity
sage: F5(6)*(F5(4)*a^3+F5(27)*b^2) != F5(0)
sage: # short Weierstrass curve
sage: E = EllipticCurve(F5,[a,b]) # y^2 == x^3 + ax +b
sage: P = E(0,2) # 2^2 == 0^3 + 2*0 + 4
sage: P.xy() # affine coordinates
sage: INF = E(0) # point at infinity
sage: try:  # point at infinity has no affine coordinates
....:     INF.xy()
....: except ZeroDivisionError:
....:     pass
sage: P = E.plot() # create a plotted version

Sage commandline, line 129::

sage: p = 115792089237316195423570985008687907853269984665640564039457584007908834671663
sage: # Hexadecimal representation
sage: p.str(16)
sage: p.is_prime()
sage: p.nbits()
sage: Fp = GF(p)
sage: Secp256k1 = EllipticCurve(Fp,[0,7])
sage: r = Secp256k1.order() # number of elements
sage: r.str(16)
sage: r.is_prime()
sage: r.nbits()

Sage commandline, line 169::

sage: P = Secp256k1.random_point().xy()
sage: P
sage: # uncompressed affine point size
sage: ZZ(P[0]).nbits()+ZZ(P[1]).nbits()
sage: # compute the compression
sage: if P[1] > Fp(-1)/Fp(2):
....:     PARITY = 1
....: else:
....:     PARITY = 0
sage: PCOMPRESSED = [P[0],PARITY]
sage: PCOMPRESSED
sage: # compressed affine point size
sage: ZZ(PCOMPRESSED[0]).nbits()+ZZ(PCOMPRESSED[1]).nbits()

Sage commandline, line 270::

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

Sage commandline, line 292::

sage: F13 = GF(13)
sage: MJJ = EllipticCurve(F13,[8,8])
sage: P = MJJ(4,0)
sage: INF = MJJ(0) # Point at infinity
sage: INF == P+P
sage: INF == 2*P

Sage commandline, line 303::

sage: P = Secp256k1.random_point()
sage: Q = Secp256k1.random_point()
sage: INF = Secp256k1(0)
sage: R1 = -P
sage: R2 = P + Q
sage: R3 = Secp256k1.order()*P
sage: P.xy()
sage: Q.xy()
sage: (ZZ(R1[0]).str(16), ZZ(R1[1]).str(16))
sage: R2.xy()
sage: R3 == INF
sage: P[1]+R1[1] == Fp(0) # -(x,y) = (x,-y)

Sage commandline, line 412::

sage: F13 = GF(13)
sage: PJJ = EllipticCurve(F13,[8,8])
sage: P = PJJ(5,11)
sage: INF = PJJ(0)
sage: 10*P == INF
sage: Q = PJJ(9,4)
sage: R = PJJ(4,0)
sage: 10*Q == R

Sage commandline, line 661::

sage: F13 = GF(13)
sage: L_MPJJ = []
....: for x in F13:
....:     for y in F13:
....:         if F13(7)*y^2 == x^3 + F13(6)*x^2 +x:
....:             L_MPJJ.append((x,y))
sage: MPJJ = Set(L_MPJJ)
sage: # does not compute the point at infinity

Sage commandline, line 697::

sage: # Compute PHI of Montgomery form:
sage: L_PHI_MPJJ = []
sage: for (x,y) in L_MPJJ: # LMJJ as defined previously
....:     v = (F13(3)*x + F13(6))/(F13(3)*F13(7))
....:     w = y/F13(7)
....:     L_PHI_MPJJ.append((v,w))
sage: PHI_MPJJ = Set(L_PHI_MPJJ)
sage: # Computation Weierstrass form
sage: C_WPJJ = EllipticCurve(F13,[8,8])
sage: L_WPJJ = [P.xy() for P in C_WPJJ.points() if P.order() > 1]
sage: WPJJ = Set(L_WPJJ)
sage: # check PHI(Montgomery) == Weierstrass
sage: WPJJ == PHI_MPJJ
sage: # check the inverse map PHI^(-1)
sage: L_PHIINV_WPJJ = []
sage: for (v,w) in L_WPJJ:
....:     x = F13(7)*(v-F13(4))
....:     y = F13(7)*w
....:     L_PHIINV_WPJJ.append((x,y))
sage: PHIINV_WPJJ = Set(L_PHIINV_WPJJ)
sage: MPJJ == PHIINV_WPJJ

Sage commandline, line 809::

sage: F13 = GF(13)
sage: L_EPJJ = []
....: for x in F13:
....:     for y in F13:
....:         if F13(3)*x^2 + y^2 == 1+ F13(8)*x^2*y^2:
....:             L_EPJJ.append((x,y))
sage: EPJJ = Set(L_EPJJ)

Sage commandline, line 908::

sage: p = 13
sage: # large prime factor
sage: n = 5
sage: for k in range(1,5): # Fermat's little theorem
....:     if (p^k-1)%n == 0:
....:         break
sage: k
sage: # small prime factor
sage: n = 2
sage: for k in range(1,2): # Fermat's little theorem
....:     if (p^k-1)%n == 0:
....:         break
sage: k

Sage commandline, line 927::

sage: p = 115792089237316195423570985008687907853269984665640564039457584007908834671663
sage: n = 115792089237316195423570985008687907852837564279074904382605163141518161494337
sage: for k in range(1,1000):
....:     if (p^k-1)%n == 0:
....:         break
sage: k

Sage commandline, line 948::

sage: F5= GF(5)
sage: F5t.<t> = F5[]
sage: P = F5t(t^2+2)
sage: P.is_irreducible()
sage: F5_2.<t> = GF(5^2, name='t', modulus=P)
sage: E1F5_2 = EllipticCurve(F5_2,[1,1])
sage: E1F5_2.order()

Sage commandline, line 980::

sage: INF = E1F5_2(0) # Point at infinity
sage: L_E1_3 = []
sage: for p in E1F5_2:
....:     if 3*p == INF:
....:         L_E1_3.append(p)
sage: E1_3 = Set(L_E1_3) # Full 3-torsion set

Sage commandline, line 999::

sage: # define the extension field
sage: F13= GF(13) # prime field
sage: F13t.<t> = F13[] # polynomials over t
sage: P = F13t(t^4+2) # irreducible polynomial of degree 4
sage: P.is_irreducible()
sage: F13_4.<t> = GF(13^4, name='t', modulus=P) # F_{13^4}
sage: TJJF13_4 = EllipticCurve(F13_4,[8,8]) # tiny \tbds{jubjub} extension
sage: # compute the full 5-torsion
sage: L_TJJF13_4_5 = []
sage: INF = TJJF13_4(0)
sage: for P in INF.division_points(5): # [5]P == INF
....:     L_TJJF13_4_5.append(P)
sage: len(L_TJJF13_4_5)
sage: TJJF13_4_5 = Set(L_TJJF13_4_5)

Sage commandline, line 1016::

sage: # define the extension field
sage: P = F13t(t^3+2) # irreducible polynomial of degree 3
sage: P.is_irreducible()
sage: F13_3.<t> = GF(13^3, name='t', modulus=P) # F_{13^3}
sage: TJJF13_3 = EllipticCurve(F13_3,[8,8]) # tiny \tbds{jubjub} extension
sage: # compute the 5-torsion
sage: L_TJJF13_3_5 = []
sage: INF = TJJF13_3(0)
sage: for P in INF.division_points(5): # [5]P == INF
....:     L_TJJF13_3_5.append(P)
sage: len(L_TJJF13_3_5)
sage: TJJF13_3_5 = Set(L_TJJF13_3_5) # full $5$-torsion

Sage commandline, line 1074::

sage: L_G1 = []
sage: for P in E1_3:
....:     PiP = E1F5_2([a.frobenius() for a in P]) # pi(P)
....:     if P == PiP:
....:         L_G1.append(P)
sage: G1 = Set(L_G1)

Sage commandline, line 1083::

sage: L_G2 = []
sage: for P in E1_3:
....:     PiP = E1F5_2([a.frobenius() for a in P]) # pi(P)
....:     pP = 5*P # [5]P
....:     if pP == PiP:
....:         L_G2.append(P)
sage: G2 = Set(L_G2)

Sage commandline, line 1096::

sage: L_TJJ_G1 = []
sage: for P in TJJF13_4_5:
....:     PiP = TJJF13_4([a.frobenius() for a in P]) # pi(P)
....:     if P == PiP:
....:         L_TJJ_G1.append(P)
sage: TJJ_G1 = Set(L_TJJ_G1)

Sage commandline, line 1105::

sage: L_TJJ_G1 = []
sage: for P in TJJF13_4_5:
....:     PiP = TJJF13_4([a.frobenius() for a in P]) # pi(P)
....:     pP = 13*P # [5]P
....:     if pP == PiP:
....:         L_TJJ_G1.append(P)
sage: TJJ_G1 = Set(L_TJJ_G1)

Sage commandline, line 1279::

sage: import Crypto
sage: from Crypto.Hash import SHA256
sage: def try_hash(s,c):
....:     s_1 = s+c
....:     h = SHA256.new(s_1)
....:     d = h.hexdigest()
....:     d = Integer(d,base=16)
....:     sign = d.str(2)[-5:-4]
....:     d = d.str(2)[-4:]
....:     z = Integer(d,base=2)
....:     return (z,sign)
sage: try_hash('10011001111010110100000111','0000')

Sage commandline, line 1294::

sage: try_hash('10011001111010110100000111','0001')

Sage commandline, line 1298::

sage: try_hash('10011001111010110100000111','0010')
sage: try_hash('10011001111010110100000111','0011')

Sage commandline, line 1311::

sage: try_hash('10011001111010110100000111','0100')
sage: try_hash('10011001111010110100000111','0101')

Sage commandline, line 1368::

sage: p = 115792089237316195423570985008687907853269984665640564039457584007908834671663
sage: r = 115792089237316195423570985008687907852837564279074904382605163141518161494337
sage: t = p + 1 -r
sage: t.nbits()
sage: abs(RR(t)) <= 2*sqrt(RR(p))

Sage commandline, line 1405::

sage: p = 115792089237316195423570985008687907853269984665640564039457584007908834671663
sage: F = GF(p)
sage: j = F(1728)*((F(4)*F(0)^3)/(F(4)*F(0)^3+F(27)*F(7)^2))
sage: j == F(0)

Sage commandline, line 1454::

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

Sage commandline, line 1630::

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

Sage commandline, line 1646::

sage: F = GF(p)
sage: for c2 in F:
....:     try: # quadratic residue
....:         _ = c2.nth_root(2)
....:     except ValueError: # quadratic non residue
....:         break
sage: c2
sage: for c3 in F:
....:     try:
....:         _ = c3.nth_root(3)
....:     except ValueError:
....:         break
sage: c3

Sage commandline, line 1662::

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

Sage commandline, line 1685::

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

Sage commandline, line 1746::

sage: for k in range(1,42): # Fermat's little theorem
....:     if (43^k-1)%13 == 0:
....:         break
sage: k

Sage commandline, line 1764::

sage: F43 = GF(43)
sage: c2 = F43(5)
....: try: # quadratic residue
....:     c2.nth_root(2)
....: except ValueError: # quadratic non residue
....:     c2
sage: c3 =F43(36)
....: try:
....:     c3.nth_root(3)
....: except ValueError:
....:     c3

Sage commandline, line 1780::

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

Sage commandline, line 1823::

sage: P = BLS6(9,2)
sage: Q = 3*P
sage: Q.xy()
sage: BLS6_13 = []
sage: for x in range(0,13): # cyclic of order 13
....:     P = x*Q
....:     BLS6_13.append(P)

Sage commandline, line 1905::

sage: F43 = GF(43)
sage: F43t.<t> = F43[]
sage: p = F43t(t^6+6)
sage: p.is_irreducible()
sage: F43_6.<v> = GF(43^6, name='v', modulus=p)

Sage commandline, line 1917::

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

Sage commandline, line 1934::

sage: Q = BLS6(7*v^2,16*v^3)
sage: BLS6_13_2 = []
sage: for x in range(0,13):
....:     P = x*Q
....:     BLS6_13_2.append(P)

Sage commandline, line 1975::

sage: g1 = BLS6([13,15])
sage: g2 = BLS6([7*v^2, 16*v^3])
sage: g1.weil_pairing(g2,13)

"""
