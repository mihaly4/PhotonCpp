


CC=g++
IDIR =.
ODIR=.
CFLAGS=-I$(IDIR)

_DEPS = pch.h PhotonAaMatrix.h PhotonDot.h PhotonFileHeader.h \
       PhotonFileLayer.h PhotonFilePreview.h PhotonFilePrintParameters.h \
       PhotonInputStream.h PhotonLayer.h PhotonLine.h PhotonMatrix.h \
       PhotonOutputStream.h PhotonProjectType.h PhotonRow.h stb_image.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))
       
_OBJ = PhotonCpp.o 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))       

$(ODIR)/%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

PngToPhotonMonoX: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ 


