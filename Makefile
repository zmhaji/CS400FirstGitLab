JAVAC = javac
JAVA = java
MAIN = Main
SOURCES = Color.java Main.java
CLASSES = $(SOURCES:.java=.class)

all: $(CLASSES)
	@echo "Sources found: $(wildcard $(SOURCES))"
	$(JAVA) $(MAIN)

$(CLASSES): $(SOURCES)
	@echo "Compling: $(SOURCES)"
	$(JAVAC) $(SOURCES)
clean:
	rm -f *.class
