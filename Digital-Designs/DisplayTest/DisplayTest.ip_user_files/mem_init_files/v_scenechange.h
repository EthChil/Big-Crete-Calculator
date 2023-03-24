#ifndef _v_scenechange_TOP_H_
#define _v_scenechange_TOP_H_

#include "hls_video.h"
#include "ap_int.h"

typedef unsigned char      U8;
typedef unsigned short     U16;
typedef unsigned int       U32;

typedef signed char        I8;
typedef signed short       I16;
typedef signed int         I32;

// Video in memory formats
#define Y8                      24  // [31:0] Y3:Y2:Y1:Y0 8:8:8:8
#define Y10                     25  // [31:0] x:Y2:Y1:Y0 2:10:10:10

#define NR_PLANES(a)            (1)
#define DEPTH(a)                (((a)==Y10) ? 10 : 8)

const int BYTES_PER_PIXEL[] =
{
    // Streaming video formats
    0, // RGB444
    0, // YUV444
    0, // YUV422
    0, // YUV420
    0, // unused
    0, // RGBA
    0, // YUVA444
    0, // unused
    0, // unused
    0, // unused

    // Video in memory formats
    4, // RGBX8
    4, // YUVX8
    2, // YUYV8
    4, // RGBA8
    4, // YUVA8
    4, // RGBX10
    4, // YUVX10
    2, // unused
    1, // Y_UV8
    1, // Y_UV8_420
    3, // RGB8
    3, // YUV8
    4, // Y_UV10        4 bytes per 3 pixels
    4, // Y_UV10_420    4 bytes per 3 pixels
    1, // Y8
    4, // Y10           4 bytes per 3 pixels
    4, // BGRA8
    4, // BGRX8
    2  // UYVY8
};

const int MEMORY2LIVE[] =
{
    // Streaming video formats
    0, // RGB444
    1, // YUV444
    2, // YUV422
    3, // YUV420
    0, // unused
    5, // RGBA
    6, // YUVA444
    0, // unused
    0, // unused
    0, // unused

    // Video in memory formats
    0, // RGBX8
    1, // YUVX8
    2, // YUYV8
    5, // RGBA8
    6, // YUVA8
    0, // RGBX10
    1, // YUVX10
    0, // unused
    2, // Y_UV8
    3, // Y_UV8_420
    0, // RGB8
    1, // YUV8
    2, // Y_UV10
    3, // Y_UV10_420
    1, // Y8
    1, // Y10
    5, // BGRA8
    0, // BGRX8
    2  // UYVY8
};

#define HISTOGRAM_BINS										(1<<HISTOGRAM_BITS)
typedef hls::stream<ap_uint<HISTOGRAM_BITS> >               STREAM_LUMA;
typedef ap_uint<20> HIST_ELEMENT;
typedef hls::Scalar<SAMPLES_PER_CLOCK, HIST_ELEMENT> HIST_ELEMENT_MULTI_PIXEL;

#if (MEMORY_BASED)
typedef ap_uint<HISTOGRAM_BITS>                                     PIXEL_TYPE;
typedef hls::Scalar<SAMPLES_PER_CLOCK, PIXEL_TYPE>    				Y_MULTI_PIXEL;

typedef hls::stream<Y_MULTI_PIXEL>                                  STREAM_MULTIPIX;

typedef ap_uint<AXIMM_DATA_WIDTH>*                                  AXIMM;
typedef hls::stream<ap_uint<AXIMM_DATA_WIDTH> >                     STREAM_BYTES;

typedef struct {
    STREAM_BYTES plane0;
} STREAM_PLANES;

#else

#define NR_COMPONENTS										3
#define BITS_PER_CLOCK          							(NR_COMPONENTS*MAX_DATA_WIDTH*SAMPLES_PER_CLOCK)

typedef ap_uint<MAX_DATA_WIDTH>                             PIXEL_TYPE;
typedef hls::Scalar<3, PIXEL_TYPE>                          YUV_PIXEL;
typedef hls::Scalar<3*SAMPLES_PER_CLOCK, PIXEL_TYPE>        YUV_MULTI_PIXEL;

typedef hls::stream<ap_axiu<BITS_PER_CLOCK,1,1,1> >     	AXI_STREAM_IN;
typedef hls::stream<ap_axiu<BITS_PER_CLOCK,1,1,1> >     	AXI_STREAM_OUT;
typedef hls::stream<YUV_MULTI_PIXEL>                    	STREAM_MULTIPIX;

typedef ap_uint<HISTOGRAM_BITS>		LUMA_HIST;
typedef hls::Scalar<SAMPLES_PER_CLOCK, LUMA_HIST> 	LUMA_HIST_MULTI_PIXEL;
typedef hls::stream<LUMA_HIST_MULTI_PIXEL>               STREAM_LUMA_MULTI_PIXEL;
#endif

//HW Registers
typedef struct
{
    U16 width[MAX_NR_STREAMS];
    U16 height[MAX_NR_STREAMS];
    U16 stride[MAX_NR_STREAMS];
    U16 video_format[MAX_NR_STREAMS];
    U16 subsample[MAX_NR_STREAMS];
#if MEMORY_BASED
    AXIMM frm_buffer0;
#if (MAX_NR_STREAMS>1)
    AXIMM frm_buffer1;
#endif
#if (MAX_NR_STREAMS>2)
    AXIMM frm_buffer2;
#endif
#if (MAX_NR_STREAMS>3)
    AXIMM frm_buffer3;
#endif
#if (MAX_NR_STREAMS>4)
    AXIMM frm_buffer4;
#endif
#if (MAX_NR_STREAMS>5)
    AXIMM frm_buffer5;
#endif
#if (MAX_NR_STREAMS>6)
    AXIMM frm_buffer6;
#endif
#if (MAX_NR_STREAMS>7)
    AXIMM frm_buffer7;
#endif
    U8 stream_enable;
#endif
}HW_STRUCT_REG;

// top level function for HW synthesis
extern void v_scenechange(
#if (!MEMORY_BASED)
        AXI_STREAM_IN& s_axis_video,
		AXI_STREAM_OUT& m_axis_video,
#endif
// HW_STRUCT_REG HwReg,
		U16 width[MAX_NR_STREAMS],
		U16 height[MAX_NR_STREAMS],
		U16 stride[MAX_NR_STREAMS],
		U16 video_format[MAX_NR_STREAMS],
		U16 subsample[MAX_NR_STREAMS],

// Frame Buffers
#if MEMORY_BASED
        AXIMM frm_buffer0,
#if (MAX_NR_STREAMS>1)
		AXIMM frm_buffer1,
#endif
#if (MAX_NR_STREAMS>2)
		AXIMM frm_buffer2,
#endif
#if (MAX_NR_STREAMS>3)
		AXIMM frm_buffer3,
#endif
#if (MAX_NR_STREAMS>4)
		AXIMM frm_buffer4,
#endif
#if (MAX_NR_STREAMS>5)
		AXIMM frm_buffer5,
#endif
#if (MAX_NR_STREAMS>6)
		AXIMM frm_buffer6,
#endif
#if (MAX_NR_STREAMS>7)
		AXIMM frm_buffer7,
#endif
		U8 &stream_enable,
#endif

// SAD Registers
	    U32* HwReg_sad0
#if (MAX_NR_STREAMS>1)
		, U32* HwReg_sad1
#endif
#if (MAX_NR_STREAMS>2)
		, U32* HwReg_sad2
#endif
#if (MAX_NR_STREAMS>3)
		, U32* HwReg_sad3
#endif
#if (MAX_NR_STREAMS>4)
		, U32* HwReg_sad4
#endif
#if (MAX_NR_STREAMS>5)
		, U32* HwReg_sad5
#endif
#if (MAX_NR_STREAMS>6)
		, U32* HwReg_sad6
#endif
#if (MAX_NR_STREAMS>7)
		, U32* HwReg_sad7
#endif
);
#endif
