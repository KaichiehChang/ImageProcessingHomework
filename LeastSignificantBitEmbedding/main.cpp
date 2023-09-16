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

#include "LeastSignificantBitEmbedding.h"


/*
    The main function of this application complete the following task:
    1.Read ./input/OriginImage.jpg and ./input/Watermark.jpg.
    2.Check both image, if they are not graysacle image, convert them to grayscale.
    3.Use least siginificant method to embed 4bits from Watermark to OriginImage.
    4.Save the embedded image to ./output/EmbeddedImage.jpg.
    5.Retore the embedded image to ./output/ExtractedWatermark.jpg.
*/
int main() {
    cv::Mat EmbeddedImage;
    cv::Mat ReconstructWatermark;
    cv::Mat OriginImage;
    cv::Mat Watermark;
    
    const std::string OriginImageName          = "OriginImage.jpg";
    const std::string WatermarkName            = "Watermark.jpg";
    const std::string EmbeddedImageName        = "EmbeddedImage.jpg";
    const std::string ReconstructWatermarkName = "ReconstructWatermark.jpg";

    try {
    OriginImage = ReadGrayscaleImage (OriginImageName);
    Watermark   = ReadGrayscaleImage (WatermarkName);

    EmbeddedImage = LeastSignificantBitMethod (OriginImage, Watermark);

    WriteImage (EmbeddedImage, EmbeddedImageName);

    ReconstructWatermark = ExtractWatermarkFromLsbEmbeddedImage (EmbeddedImage);

    WriteImage (ReconstructWatermark, ReconstructWatermarkName);
    
    } catch (const std::exception& err) {
        std::cerr << "Program end up with a fatal error occured : " << err.what () <<std::endl;
        return EXIT_FAILURE;
    }

    if (!EmbeddedImage.empty ()) {
        EmbeddedImage.release ();
    }

    if (!ReconstructWatermark.empty ()) {
        ReconstructWatermark.release ();
    }

    if (!OriginImage.empty ()) {
        OriginImage.release ();
    }

    if (!Watermark.empty ()) {
        Watermark.release ();
    }

    return EXIT_SUCCESS;
}

cv::Mat ReadGrayscaleImage (const std::string& ImageName) {
    std::string ImagePath;
    cv::Mat      Image;

    try {
        ImagePath = "./input/" + ImageName;

        //Ignore EXIF's orientation flag.
        Image = cv::imread (ImagePath, cv::IMREAD_GRAYSCALE  );

        if (Image.empty ()) {
            throw std::runtime_error ("Read image failed!");
        }

        return Image;
    } catch (const cv::Exception& err) {
        std::cerr << "Error occured in OpenCV : " << err.what () <<std::endl;
        throw;
    } catch (const std::exception& err) {
        std::cerr << "Error occurred : " << err.what () << std::endl;
        throw;
    }
}

void WriteImage (const cv::Mat Image, const std::string& ImageName) {
    std::filesystem::path OutputDir ("./output");
    std::filesystem::path OutputPath;

    OutputPath = OutputDir / ImageName;

    try {
        //Create a directory if "./output" is not exist.
        if (!std::filesystem::exists (OutputDir)) {
            if (!std::filesystem::create_directory(OutputDir)) {
                throw std::runtime_error ("Create output directory failed!");
            }
        }

        if (!cv::imwrite (OutputPath.string(), Image)) {
            throw std::runtime_error ("Write image failed!");
        }

        return ;
    } catch (const cv::Exception& err) {
        std::cerr << "Error occured in OpenCV : " << err.what () <<std::endl;
        throw;
    } catch (const std::exception& err) {
        std::cerr << "Error occurred : " << err.what () << std::endl;
        throw;
    }
}

cv::Mat LeastSignificantBitMethod (const cv::Mat& OriginImage, const cv::Mat& Watermark) {
    cv::Mat EmbeddedImage;
    int rows;
    int cols;

    EmbeddedImage = cv::Mat::zeros (OriginImage.size (), OriginImage.type ());

    rows = OriginImage.rows;
    cols = OriginImage.cols;

    //Embed 4 bit of Watermark to OriginImage.
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            EmbeddedImage.at<uchar>(i, j) = ((OriginImage.at<uchar>(i, j) & 0xf0 ) | ((Watermark.at<uchar>(i, j) & 0xf0) >> 4));
        }
    }

    return EmbeddedImage;
}

cv::Mat ExtractWatermarkFromLsbEmbeddedImage (const cv::Mat& EmbeddedImage) {
    cv::Mat ReconstructWatermark;
    int rows;
    int cols;

    ReconstructWatermark = cv::Mat::zeros (EmbeddedImage.size(), EmbeddedImage.type ());
    rows = EmbeddedImage.rows;
    cols = EmbeddedImage.cols;

    //Embed 4 bit of Watermark to OriginImage.
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            ReconstructWatermark.at<uchar>(i, j) = ((EmbeddedImage.at<uchar>(i, j) & 0x0f) << 4);
        }
    }

    return ReconstructWatermark;
}