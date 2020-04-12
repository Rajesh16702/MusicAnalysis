library(seewave)
data(tico)
data(orni)
data(pellucens)

op1<-par(ask=TRUE)

# different oscillograms of a tropical sparrow song
oscillo(tico,f=22050)

oscillo(tico,f=22050,k=2,j=2,byrow=TRUE)
op <-par(bg="grey")

oscillo(tico,f=22050,k=4,j=1,title=TRUE,colwave="black", 
        coltitle="yellow",collab="red",colline="white", 
        colaxis="blue",coly0="grey50")

  
par(op)

# overplot of oscillographic and envelope representation
oscillo(tico,f=22050)

par(new=TRUE)

env(tico,f=22050,colwave=2)

# temporal automatic measurements
  timer(orni,f=22050,threshold=5,msmooth=c(40,0), 
        bty="l",colval="blue")

  
  title(main="Timer() for automatic time measurements",col="blue")

# instantaneous frequency
  ifreq(tico,f=22050,threshold=5)

  
  title(main="Instantaneous frequency using Hilbert transform")

# comparaison of a full spectrum and a mean spectrum of a cicada song
  op <- par(mfrow=c(2,1))

spec(orni,f=22050,type="l")

  
  title("spec()")

meanspec(orni,f=22050,wl=512,type="l")

title("meanspec()")

par(op)

# basic 2D spectrogram of a bird song
  op <- par(op)

spectro(tico,f=22050,wl=512,ovlp=50,zp=16,collevels=seq(-40,0,0.5))

