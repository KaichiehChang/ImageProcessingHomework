/*
 * Copyright (c) 2023 KAI-CHIEH CHANG
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#ifndef LEAST_SIGNIFICANTBIT_EMBEDDING_H
#define LEAST_SIGNIFICANTBIT_EMBEDDING_H

#include <bitset>
#include <exception>
#include <filesystem>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>

const unsigned int HIGH_NIBBLE_MASK = 0xf0;
const unsigned int LOW_NIBBLE_MASK  = 0x0f;
const unsigned int NIBBLE_SHIFT     = 4;

/*
    Read the image in directory "./input/" and convert it to grayscale image.

    @param[in]      ImageName          The name of the image which will be read.

    @retval         Image              The grayscale image that convert from "./input/ImageName", 
                                       it will return an empty one if read failed.
*/
cv::Mat ReadGrayscaleImage (
    const std::string& ImageName
    );

/*
    Write the image to directory "./output"

    @param[in]      Image              The Image that write to directory "./output".
    @param[in]      ImageName          Image name that will be write to "./output".

*/
void WriteImage (
    const cv::Mat Image,
    const std::string& ImageName
    );

/*
    Embed Watermark into the OriginImage by least significant bit method.
    It will not check the input image, so user should make sure both OriginImage and Watermark is grayscale.

    @param[in]      OriginImage        The original image which the watermark will embedbed to.
    @param[in]      Watermark          The image that will be use as watermark.

    @retval         EmbeddedImage      The image that embedd watermark, base on original image.
*/
cv::Mat LeastSignificantBitMethod (
    const cv::Mat& OriginImage, 
    const cv::Mat& Watermark
    );

/*
    Extract watermark from an embedded image which is embed by least significant bit method.
    It will not check the input image, so user should make sure the input image is embed by function LeastSignificantBitMethod.

    @param[in]      EmbeddedImage      The image that embedded watermark by least significant bit method.

    @retval         Watermark          The watermark that extract from the input.
*/
cv::Mat ExtractWatermarkFromLsbEmbeddedImage (
    const cv::Mat& EmbeddedImage
    );

#endif