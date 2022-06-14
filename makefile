OBJS	= lib/Default.o
SOURCE	= lib/Default.cpp
HEADER	= 
OUT	    = LocoSoftware_LibVCC.so
LFLAGS	= -shared

all: LocoSoftware_LibVCC.so

LocoSoftware_LibVCC.so: $(OBJS)
	$(CC) -o $@ $^ $(LFLAGS)

%.o: %.c $(HEADER)
	$(CC) -c -o $@ $< $(LFLAGS)

clean:
	rm -f $(OBJS) $(OUT)