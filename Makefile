all: build run

build:
	g++ -g $(shell pkg-config --libs vulkan) main.cpp -o amf-test

run:
	VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/amd_pro_icd64.json ./amf-test
