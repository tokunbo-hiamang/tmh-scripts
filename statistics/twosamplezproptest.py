#!/Users/tokunbohiamang/anaconda3/bin/python

def twosampleproptest(x1,  n1,   x2,  n2,  alpha,  side):
    p1hat = float(x1)/n1
    p2hat = float(x2)/n2
    phat = float(x1 +x2)/(n1+n2)
    print "p1hat, p2hat",  p1hat,  p2hat
    samplestat =  p1hat - p2hat
    se = sqrt(phat*(1.0-phat) * (1.0/n1 + 1.0/n2))
    return ztest(samplestat,  se,  alpha,  side)