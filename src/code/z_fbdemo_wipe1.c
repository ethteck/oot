#include <global.h>

Vtx sWipeVtx[] = {
    VTX(-1299, 750, 0, 13653, 2048, 0xAD, 0x30, 0xB8, 0xFF),  VTX(-750, 1299, 0, 15019, 2048, 0xD0, 0x53, 0xB8, 0xFF),
    VTX(0, 0, -500, 14336, 0, 0xCE, 0xCE, 0xA0, 0xFF),        VTX(0, 1500, 0, 16384, 2048, 0x00, 0x60, 0xB8, 0xFF),
    VTX(0, 0, -500, 15701, 0, 0x3D, 0x3D, 0xAD, 0xFF),        VTX(0, 1500, 0, 0, 2048, 0x00, 0x60, 0xB8, 0xFF),
    VTX(750, 1299, 0, 1365, 2048, 0x30, 0x53, 0xB8, 0xFF),    VTX(0, 0, -500, 683, 0, 0x3D, 0x3D, 0xAD, 0xFF),
    VTX(1299, 750, 0, 2731, 2048, 0x53, 0x30, 0xB8, 0xFF),    VTX(0, 0, -500, 2048, 0, 0x3D, 0x3D, 0xAD, 0xFF),
    VTX(1500, 0, 0, 4096, 2048, 0x60, 0x00, 0xB8, 0xFF),      VTX(0, 0, -500, 3413, 0, 0x3D, 0x3D, 0xAD, 0xFF),
    VTX(1299, -750, 0, 5461, 2048, 0x53, 0xD0, 0xB8, 0xFF),   VTX(0, 0, -500, 4779, 0, 0x3D, 0x3D, 0xAD, 0xFF),
    VTX(750, -1299, 0, 6827, 2048, 0x30, 0xAD, 0xB8, 0xFF),   VTX(0, 0, -500, 6144, 0, 0xCE, 0xCE, 0xA0, 0xFF),
    VTX(0, -1500, 0, 8192, 2048, 0x00, 0xA0, 0xB8, 0xFF),     VTX(0, 0, -500, 7509, 0, 0xCE, 0xCE, 0xA0, 0xFF),
    VTX(-750, -1299, 0, 9557, 2048, 0xD0, 0xAD, 0xB8, 0xFF),  VTX(0, 0, -500, 8875, 0, 0xCE, 0xCE, 0xA0, 0xFF),
    VTX(-1299, -750, 0, 10923, 2048, 0xAD, 0xD0, 0xB8, 0xFF), VTX(0, 0, -500, 10240, 0, 0xCE, 0xCE, 0xA0, 0xFF),
    VTX(-1500, 0, 0, 12288, 2048, 0xA0, 0x00, 0xB8, 0xFF),    VTX(0, 0, -500, 11605, 0, 0xCE, 0xCE, 0xA0, 0xFF),
    VTX(0, 0, -500, 12971, 0, 0xCE, 0xCE, 0xA0, 0xFF),
};

char sWipeTexture[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x20, 0x01, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x20, 0x01,
    0x24, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x30, 0x12, 0x34, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x10, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x01, 0x31, 0x23, 0x45, 0x21, 0x10, 0x00, 0x00, 0x01, 0x00, 0x11, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x41,
    0x34, 0x56, 0x31, 0x10, 0x00, 0x00, 0x01, 0x00, 0x21, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01, 0x00, 0x00, 0x00, 0x10, 0x02, 0x42, 0x35, 0x66, 0x32, 0x20, 0x00, 0x00,
    0x02, 0x00, 0x32, 0x13, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20,
    0x01, 0x00, 0x00, 0x00, 0x10, 0x02, 0x53, 0x45, 0x67, 0x42, 0x20, 0x00, 0x00, 0x02, 0x01, 0x32, 0x23, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x12, 0x00, 0x10, 0x00, 0x10, 0x03,
    0x64, 0x56, 0x77, 0x53, 0x30, 0x01, 0x00, 0x13, 0x12, 0x42, 0x24, 0x20, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01,
    0x10, 0x00, 0x00, 0x00, 0x00, 0x01, 0x31, 0x13, 0x00, 0x11, 0x00, 0x10, 0x03, 0x64, 0x67, 0x77, 0x54, 0x41, 0x01,
    0x00, 0x14, 0x12, 0x53, 0x35, 0x20, 0x10, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x41, 0x24, 0x11, 0x21, 0x00, 0x20, 0x14, 0x75, 0x67, 0x77, 0x64, 0x51, 0x12, 0x00, 0x24, 0x23, 0x53, 0x46, 0x30,
    0x10, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01, 0x10, 0x00, 0x00, 0x00, 0x00, 0x02, 0x52, 0x34, 0x11, 0x31, 0x01, 0x20,
    0x15, 0x76, 0x77, 0x87, 0x65, 0x52, 0x13, 0x00, 0x25, 0x34, 0x64, 0x56, 0x31, 0x20, 0x00, 0x00, 0x00, 0x01, 0x31,
    0x02, 0x10, 0x00, 0x00, 0x00, 0x10, 0x03, 0x52, 0x35, 0x22, 0x41, 0x02, 0x21, 0x26, 0x77, 0x77, 0x87, 0x75, 0x62,
    0x13, 0x11, 0x36, 0x35, 0x65, 0x57, 0x41, 0x30, 0x00, 0x10, 0x00, 0x01, 0x31, 0x12, 0x10, 0x10, 0x00, 0x00, 0x10,
    0x04, 0x62, 0x46, 0x23, 0x51, 0x02, 0x21, 0x36, 0x77, 0x78, 0x88, 0x76, 0x63, 0x24, 0x11, 0x46, 0x46, 0x75, 0x67,
    0x52, 0x40, 0x01, 0x10, 0x00, 0x02, 0x42, 0x13, 0x10, 0x20, 0x01, 0x00, 0x21, 0x15, 0x63, 0x56, 0x34, 0x51, 0x13,
    0x31, 0x47, 0x88, 0x78, 0x88, 0x77, 0x64, 0x24, 0x22, 0x56, 0x56, 0x76, 0x77, 0x53, 0x41, 0x02, 0x10, 0x10, 0x03,
    0x53, 0x23, 0x21, 0x31, 0x01, 0x01, 0x31, 0x16, 0x74, 0x66, 0x35, 0x62, 0x14, 0x32, 0x47, 0x88, 0x88, 0x88, 0x87,
    0x75, 0x34, 0x22, 0x57, 0x57, 0x76, 0x77, 0x54, 0x51, 0x03, 0x10, 0x11, 0x04, 0x63, 0x34, 0x22, 0x31, 0x02, 0x01,
    0x42, 0x26, 0x74, 0x67, 0x46, 0x62, 0x25, 0x42, 0x57, 0x89, 0x88, 0x88, 0x98, 0x75, 0x35, 0x33, 0x67, 0x67, 0x77,
    0x77, 0x65, 0x51, 0x03, 0x10, 0x21, 0x14, 0x64, 0x45, 0x33, 0x41, 0x12, 0x12, 0x52, 0x37, 0x75, 0x77, 0x56, 0x72,
    0x36, 0x53, 0x67, 0x89, 0x88, 0x89, 0xA8, 0x76, 0x45, 0x44, 0x67, 0x67, 0x87, 0x77, 0x76, 0x62, 0x14, 0x21, 0x32,
    0x15, 0x75, 0x55, 0x43, 0x52, 0x13, 0x13, 0x63, 0x47, 0x75, 0x77, 0x57, 0x73, 0x46, 0x54, 0x78, 0x8A, 0x88, 0x9A,
    0xA8, 0x77, 0x56, 0x55, 0x77, 0x67, 0x88, 0x88, 0x76, 0x72, 0x25, 0x21, 0x42, 0x26, 0x75, 0x66, 0x54, 0x62, 0x24,
    0x23, 0x64, 0x57, 0x76, 0x77, 0x67, 0x74, 0x57, 0x65, 0x78, 0x9B, 0x89, 0x9B, 0xB8, 0x87, 0x56, 0x55, 0x77, 0x78,
    0x88, 0x88, 0x87, 0x73, 0x25, 0x21, 0x43, 0x36, 0x76, 0x67, 0x65, 0x63, 0x35, 0x24, 0x75, 0x57, 0x77, 0x77, 0x77,
    0x75, 0x67, 0x65, 0x78, 0x9B, 0x89, 0xAB, 0xC8, 0x87, 0x67, 0x66, 0x77, 0x78, 0x98, 0x88, 0x98, 0x74, 0x36, 0x32,
    0x54, 0x37, 0x76, 0x77, 0x66, 0x73, 0x45, 0x35, 0x75, 0x67, 0x77, 0x88, 0x77, 0x75, 0x67, 0x66, 0x78, 0xAC, 0x9A,
    0xBC, 0xC8, 0x87, 0x67, 0x66, 0x77, 0x78, 0xA9, 0x88, 0x98, 0x75, 0x46, 0x33, 0x65, 0x47, 0x77, 0x77, 0x77, 0x74,
    0x56, 0x46, 0x76, 0x77, 0x87, 0x89, 0x88, 0x76, 0x77, 0x76, 0x78, 0xBD, 0x9B, 0xCD, 0xD8, 0x98, 0x77, 0x76, 0x78,
    0x78, 0xAA, 0x89, 0x98, 0x76, 0x56, 0x44, 0x66, 0x57, 0x77, 0x77, 0x77, 0x75, 0x67, 0x46, 0x77, 0x78, 0x88, 0x89,
    0x88, 0x87, 0x78, 0x87, 0x78, 0xCD, 0x9C, 0xDE, 0xD9, 0x98, 0x77, 0x77, 0x78, 0x88, 0xBA, 0x99, 0xA8, 0x76, 0x66,
    0x44, 0x76, 0x67, 0x88, 0x88, 0x88, 0x75, 0x77, 0x56, 0x77, 0x78, 0x99, 0x89, 0x88, 0x88, 0x88, 0x87, 0x88, 0xCD,
    0x9D, 0xEE, 0xD9, 0xA8, 0x88, 0x87, 0x88, 0x88, 0xCB, 0x9A, 0xA8, 0x77, 0x67, 0x55, 0x77, 0x77, 0x88, 0x88, 0x88,
    0x76, 0x77, 0x67, 0x78, 0x88, 0xAA, 0x8A, 0x98, 0x89, 0x88, 0x98, 0x88, 0xDD, 0xAD, 0xFE, 0xDA, 0xB9, 0x88, 0x98,
    0x89, 0x88, 0xDC, 0xAB, 0xB8, 0x88, 0x77, 0x56, 0x77, 0x77, 0x89, 0x88, 0x98, 0x76, 0x77, 0x67, 0x88, 0x88, 0xAA,
    0x8A, 0xA8, 0x9A, 0x88, 0xA8, 0x89, 0xDD, 0xAE, 0xFF, 0xDA, 0xC9, 0x88, 0x98, 0x89, 0x88, 0xDD, 0xAC, 0xB8, 0x88,
    0x77, 0x66, 0x78, 0x78, 0x99, 0x88, 0x98, 0x77, 0x77, 0x77, 0x89, 0x88, 0xBB, 0x9B, 0xA8, 0x9B, 0x88, 0xB8, 0x8A,
    0xED, 0xBE, 0xFF, 0xDB, 0xDA, 0x88, 0xA8, 0x8A, 0x89, 0xED, 0xBD, 0xC8, 0x89, 0x87, 0x67, 0x89, 0x88, 0x9A, 0x88,
    0xA8, 0x87, 0x77, 0x77, 0x8A, 0x88, 0xCB, 0x9C, 0xB8, 0xAC, 0x88, 0xC9, 0x8A, 0xFD, 0xCF, 0xFF, 0xEC, 0xEB, 0x89,
    0xB8, 0x9B, 0x89, 0xED, 0xCE, 0xC8, 0x9A, 0x87, 0x77, 0x89, 0x88, 0xAB, 0x89, 0xA8, 0x87, 0x88, 0x78, 0x8B, 0x89,
    0xDC, 0x9C, 0xC9, 0xBC, 0x88, 0xDA, 0x8B, 0xFE, 0xCF, 0xFF, 0xEC, 0xEB, 0x8A, 0xC9, 0xAC, 0x9A, 0xEE, 0xCE, 0xD8,
    0x9A, 0x87, 0x77, 0x8A, 0x88, 0xBC, 0x9A, 0xB8, 0x98, 0x88, 0x78, 0x8B, 0x8A, 0xED, 0x9D, 0xC9, 0xCD, 0x89, 0xEB,
    0x8C, 0xFE, 0xDF, 0xFF, 0xFD, 0xFC, 0x9B, 0xD9, 0xBD, 0x9A, 0xFE, 0xDF, 0xE9, 0xAB, 0x88, 0x77, 0x8A, 0x88, 0xCD,
    0x9B, 0xC8, 0xA9, 0x88, 0x88, 0x9C, 0x9A, 0xED, 0xAD, 0xD9, 0xDE, 0x89, 0xEB, 0x9C, 0xFE, 0xEF, 0xFF, 0xFE, 0xFD,
    0x9B, 0xD9, 0xBD, 0xAB, 0xFE, 0xDF, 0xE9, 0xBC, 0x88, 0x88, 0x8B, 0x98, 0xDD, 0xAB, 0xC9, 0xAA, 0x88, 0x88, 0xAD,
    0x9B, 0xED, 0xBE, 0xE9, 0xDE, 0x99, 0xEC, 0x9D, 0xFE, 0xFF, 0xFF, 0xFF, 0xFD, 0xAC, 0xE9, 0xCE, 0xAC, 0xFE, 0xDF,
    0xE9, 0xCC, 0x89, 0x88, 0x8C, 0x99, 0xEE, 0xAC, 0xC9, 0xBB, 0x88, 0x88, 0xAE, 0x9B, 0xFD, 0xBF, 0xE9, 0xEE, 0x99,
    0xEC, 0x9D, 0xFF, 0xFF, 0xFF, 0xFF, 0xFD, 0xAD, 0xE9, 0xDE, 0xBD, 0xFE, 0xEF, 0xEA, 0xDD, 0x99, 0x88, 0x9D, 0xA9,
    0xEE, 0xAD, 0xDA, 0xCC, 0x89, 0x88, 0xBE, 0xAC, 0xFE, 0xCF, 0xEA, 0xEE, 0xAA, 0xED, 0x9E, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFE, 0xBE, 0xEA, 0xDF, 0xCE, 0xFE, 0xEF, 0xEB, 0xED, 0x9A, 0x88, 0xAD, 0xAA, 0xFE, 0xBE, 0xDA, 0xDC, 0x99, 0x98,
    0xCE, 0xBD, 0xFE, 0xDF, 0xEA, 0xFF, 0xAB, 0xFD, 0xAE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xCE, 0xDA, 0xEF, 0xCE, 0xFE,
    0xFF, 0xFC, 0xED, 0x9A, 0x88, 0xBE, 0xBB, 0xFE, 0xBE, 0xDB, 0xED, 0xAA, 0xA9, 0xDF, 0xBD, 0xFD, 0xEF, 0xEB, 0xFF,
    0xBC, 0xFE, 0xBE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xDF, 0xEB, 0xEF, 0xDF, 0xFF, 0xFF, 0xFD, 0xFC, 0x9B, 0x99, 0xCE,
    0xBC, 0xFE, 0xCF, 0xEC, 0xFE, 0xBB, 0xB9, 0xEF, 0xCE, 0xFD, 0xEF, 0xEC, 0xFF, 0xCD, 0xFE, 0xCE, 0xFE, 0xFF, 0xFF,
    0xFF, 0xFE, 0xDF, 0xEC, 0xEF, 0xDF, 0xFF, 0xFF, 0xFD, 0xFC, 0xAC, 0xAA, 0xCE, 0xCD, 0xFE, 0xDF, 0xEC, 0xFE, 0xCC,
    0xBA, 0xEF, 0xDE, 0xED, 0xFF, 0xED, 0xFF, 0xDD, 0xEE, 0xCF, 0xEE, 0xFF, 0xFF, 0xFF, 0xFE, 0xEF, 0xEC, 0xEF, 0xEF,
    0xFF, 0xFF, 0xFE, 0xFC, 0xBC, 0xAB, 0xDD, 0xDD, 0xFE, 0xDF, 0xED, 0xFE, 0xCD, 0xCB, 0xFF, 0xEE, 0xEC, 0xFF, 0xDD,
    0xFF, 0xEE, 0xEE, 0xDF, 0xEE, 0xFF, 0xFF, 0xFF, 0xFE, 0xEF, 0xED, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0xFC, 0xCD, 0xAC,
    0xED, 0xDE, 0xFE, 0xEF, 0xFE, 0xFE, 0xDE, 0xDC, 0xFF, 0xEF, 0xEC, 0xFF, 0xDE, 0xFF, 0xFF, 0xEE, 0xEF, 0xEE, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xEE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFC, 0xCD, 0xAD, 0xFD, 0xDF, 0xFE, 0xEF, 0xFF, 0xFE,
    0xEE, 0xED, 0xFF, 0xFF, 0xEC, 0xFF, 0xDF, 0xFE, 0xFF, 0xEF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xEE, 0xFE,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFC, 0xDD, 0xBE, 0xFD, 0xEF, 0xFF, 0xFF, 0xFF, 0xFE, 0xEF, 0xED, 0xFF, 0xFF, 0xEB, 0xFF,
    0xDF, 0xFE, 0xFF, 0xEF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFD, 0xEE,
    0xBE, 0xFD, 0xEF, 0xFF, 0xFF, 0xFF, 0xFE, 0xFF, 0xEE, 0xFF, 0xFF, 0xEB, 0xFF, 0xDF, 0xFE, 0xFF, 0xEF, 0xFF, 0xEF,
    0xFF, 0xFF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFD, 0xFF, 0xFF, 0xFF, 0xFF, 0xFD, 0xFE, 0xBF, 0xFD, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFE, 0xEF, 0xEE, 0xFF, 0xFF, 0xFC, 0xFF, 0xEF, 0xFE, 0xFF, 0xEF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0xEF, 0xFF, 0xFF,
    0xFD, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xFF, 0xAF, 0xFE, 0xFF, 0xFF, 0xFF, 0xEF, 0xFE, 0xEF, 0xEE, 0xFF, 0xFF, 0xFC,
    0xFF, 0xEF, 0xFE, 0xFF, 0xEF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0xDF, 0xFF, 0xFF, 0xFC, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xAF, 0xFE, 0xFF, 0xFF, 0xFF, 0xEF, 0xFE, 0xEF, 0xEE, 0xFF, 0xFF, 0xFC, 0xFF, 0xEF, 0xFE, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xDF, 0xFF, 0xFF, 0xFC, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xAE, 0xFE, 0xFF, 0xFF, 0xFF,
    0xEF, 0xFF, 0xEF, 0xED, 0xFF, 0xFF, 0xFC, 0xFF, 0xFF, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

Gfx sWipeDList[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN |
                          G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH),
    gsSPSetGeometryMode(G_ZBUFFER | G_SHADE | G_SHADING_SMOOTH),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_PERSP | G_CYC_2CYCLE | G_PM_1PRIMITIVE,
                     G_AC_NONE | G_ZS_PRIM | G_RM_PASS | G_RM_AA_ZB_TEX_EDGE2),
    gsDPSetCombineLERP(TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, COMBINED, 0,
                       PRIMITIVE, 0, COMBINED, 0, PRIMITIVE, 0),
    gsDPSetPrimDepth(0, 0),
    gsDPLoadTextureBlock_4b(sWipeTexture, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_MIRROR | G_TX_WRAP, 6,
                            6, 11, G_TX_NOLOD),
    gsDPLoadMultiBlock_4b(sWipeTexture, 0x0100, 1, G_IM_FMT_I, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP,
                          G_TX_MIRROR | G_TX_WRAP, 6, 6, 11, 1),
    gsDPSetTextureLUT(G_TT_NONE),
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsSPDisplayList(0x08000000),
    gsSPVertex(sWipeVtx, 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 3, 4, 0),
    gsSP2Triangles(5, 6, 7, 0, 6, 8, 9, 0),
    gsSP2Triangles(8, 10, 11, 0, 10, 12, 13, 0),
    gsSP2Triangles(12, 14, 15, 0, 14, 16, 17, 0),
    gsSP2Triangles(16, 18, 19, 0, 18, 20, 21, 0),
    gsSP2Triangles(20, 22, 23, 0, 22, 0, 24, 0),
    gsSPEndDisplayList(),
};

// unused.
Gfx sWipeSyncDList[] = {
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

void TransitionWipe_Start(TransitionWipe* this) {
    this->isDone = 0;
    if (this->direction) {
        this->texY = 0x14D;
    } else {
        this->texY = 0x264;
    }

    guPerspective(&this->projection, &this->normal, 60.0f, (4.0 / 3.0f), 10.0f, 12800.0f, 1.0f);
    guLookAt(&this->lookAt, 0.0f, 0.0f, 400.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
}

TransitionWipe* TransitionWipe_Init(TransitionWipe* this) {
    bzero(this, sizeof(*this));
    return this;
}

void TransitionWipe_Destroy(TransitionWipe* this) {
}

void TransitionWipe_Update(TransitionWipe* this, s32 updateRate) {
    u8 unk1419;

    if (this->direction != 0) {
        unk1419 = gSaveContext.unk_1419;
        this->texY += (unk1419 * 3) / updateRate;
        if (this->texY >= 0x264) {
            this->texY = 0x264;
            this->isDone = 1;
        }
    } else {
        unk1419 = gSaveContext.unk_1419;
        this->texY -= (unk1419 * 3) / updateRate;
        if (this->texY < 0x14E) {
            this->texY = 0x14D;
            this->isDone = 1;
        }
    }
}

void TransitionWipe_Draw(TransitionWipe* this, Gfx** gfxP) {
    Gfx* gfx = *gfxP;
    Mtx* modelView;
    char pad[0x14];
    Gfx* tex;

    modelView = this->modelView[this->frame];
    this->frame ^= 1;
    guScale(&modelView[0], 0.56f, 0.56f, 1.0f);
    guRotate(&modelView[1], 0.0f, 0.0f, 0.0f, 1.0f);
    guTranslate(&modelView[2], 0.0f, 0.0f, 0.0f);
    gDPPipeSync(gfx++);
    tex = Gfx_BranchTexScroll(&gfx, this->texX, this->texY, 0, 0);
    gSPSegment(gfx++, 8, tex);
    gDPSetPrimColor(gfx++, 0, 0x80, this->color.r, this->color.g, this->color.b, 255);
    gSPMatrix(gfx++, &this->projection, G_MTX_LOAD | G_MTX_PROJECTION);
    gSPPerspNormalize(gfx++, this->normal);
    gSPMatrix(gfx++, &this->lookAt, G_MTX_MUL | G_MTX_PROJECTION);
    gSPMatrix(gfx++, &modelView[0], G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPMatrix(gfx++, &modelView[1], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPMatrix(gfx++, &modelView[2], G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
    gSPDisplayList(gfx++, sWipeDList);
    gDPPipeSync(gfx++);
    *gfxP = gfx;
}

s32 TransitionWipe_IsDone(TransitionWipe* this) {
    return this->isDone;
}

void TransitionWipe_SetType(TransitionWipe* this, s32 type) {
    if (type == 1) {
        this->direction = 1;
    } else {
        this->direction = 0;
    }

    if (this->direction != 0) {
        this->texY = 0x14D;
    } else {
        this->texY = 0x264;
    }
}

void TransitionWipe_SetColor(TransitionWipe* this, u32 color) {
    this->color.rgba = color;
}

void TransitionWipe_SetEnvColor(TransitionWipe* this, u32 color) {
    this->envColor.rgba = color;
}
