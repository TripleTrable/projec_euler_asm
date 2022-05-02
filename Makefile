
TARGS:= \
	problem_01 \
	problem_02 \
	
SRCS:= $(TARGS:=.S)
OBJS:= $(TARGS:=.o)

build: $(TARGS)



%.o: %.S
	$(AS) -o $@ $^

$(TARGS): %: %.o
	ld -o $@ $^

clean:
	rm $(TARGS) $(OBJS)

.PHONY: $(TARGS) build clean
