#include <iostream>

#include <string>
#include <array>
#ifndef H5_NO_NAMESPACE
#ifndef H5_NO_STD
using std::cout;
using std::endl;
#endif // H5_NO_STD
#endif
#include "H5Cpp.h"
#ifndef H5_NO_NAMESPACE
using namespace H5;
#endif
const H5std_string FILE_NAME("/home/dmitriyl/Downloads/pid/2023_06_01_16_55_28_pid_off.h5");
const H5std_string DATASET_NAME("image");
const int NX_SUB = 1; // hyperslab dimensions
const int NY_SUB = 1;
const int NX = 100; // output buffer dimensions
const int NY = 1653;
const int NZ = 100;
const int RANK_OUT = 3;
int16_t rdata[1653][100][100];

int main(void)
{
    /*
     * Output buffer initialization.
     */
    /*
     * Try block to detect exceptions raised by any of the calls inside it
     */
    try
    {
        /*
         * Turn off the auto-printing when failure occurs so that we can
         * handle the errors appropriately
         */
        //   Exception::dontPrint();
        /*
         * Open the specified file and the specified dataset in the file.
         */
        H5File file(FILE_NAME, H5F_ACC_RDONLY);
        DataSet dataset = file.openDataSet(DATASET_NAME);
        /*
         * Get the class of the datatype that is used by the dataset.
         */
        H5T_class_t type_class = dataset.getTypeClass();
        /*
         * Get class of datatype and print message if it's an integer.
         */

            cout << "Data set has INTEGER type" << endl;
            /*
             * Get the integer datatype
             */
            IntType intype = dataset.getIntType();
            /*
             * Get order of datatype and print message if it's a little endian.
             */
            H5std_string order_string;
            H5T_order_t order = intype.getOrder(order_string);
            cout << order_string << endl;
            /*
             * Get size of the data element stored in file and print it.
             */
            size_t size = intype.getSize();
            cout << "Data size is " << size << endl;
        
        /*
         * Get dataspace of the dataset.
         */
        DataSpace dataspace = dataset.getSpace();
        /*
         * Get the number of dimensions in the dataspace.
         */
        int rank = dataspace.getSimpleExtentNdims();
        /*
         * Get the dimension size of each dimension in the dataspace and
         * display them.
         */
        hsize_t dims_out[3];
        int ndims = dataspace.getSimpleExtentDims(dims_out, NULL);
        cout << "rank " << rank << ", dimensions " << (unsigned long)(dims_out[0]) << " x " << (unsigned long)(dims_out[1]) << " x " << dims_out[2] << endl;
        DataSpace filespace = DataSpace(dataspace.ALL);
        dataset.read(rdata, PredType::NATIVE_INT16, dataspace, filespace);
        for(int k = 0; k < 10; k++){
            for(int i = 0; i != 10; ++i){
                for(int j = 0; j != 10; ++j){
                    cout << rdata[i][j][k] << " ";
                }
                cout << endl;
            }
            cout << endl;
        }
    } // end of try block

    // catch failure caused by the H5File operations
    catch (FileIException error)
    {
        error.printErrorStack();
        return -1;
    }
    // catch failure caused by the DataSet operations
    catch (DataSetIException error)
    {
        error.printErrorStack();
        return -1;
    }
    // catch failure caused by the DataSpace operations
    catch (DataSpaceIException error)
    {
        error.printErrorStack();
        return -1;
    }
    // catch failure caused by the DataSpace operations
    catch (DataTypeIException error)
    {
        error.printErrorStack();
        return -1;
    }
    return 0; // successfully terminated
}