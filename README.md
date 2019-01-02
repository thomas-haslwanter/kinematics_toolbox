# kinematics_toolbox
The Matlab "3D-Kinematics" toolbox is a library for scientific data analysis, with a focus on 3d kinematics.

It ontains the following routines:

### Analysis for IMU-recordings

    * Calculation of orientation from velocity, recorded with IMUs or space-fixed systems (four different algorithms are implemente here:
        - simple quaternion integration
        - a quaternion Kalman filter
        - Madgwick’s algorithm
        - Mahony’s algorithm
    * Calculation of position and orientation from IMU-signals
    * The sub-directory sensors contains utility to import in data from xio, XSens, and yei system

### Analysis routines for 3D movements from marker-based video recordings
    * Function that takes recordings from video-systems (e.g. Optotrak) and calculates position and orientation
    * Calculation of joint movements from marker recordings

### Functions for working with quaternions

    * Quaternion multiplication, inversion, conjugate
    * Conversions to rotation matrices, axis angles, vectors
    * Quaternion class, including operator overloading for multiplication and division
    * also work on data arrays

### Functions for working with rotation matrices

    * Rotation matrices for rotations about the x-, y-, and z-axis
    * Symbolic rotation matrices
    * Conversions to Euler, Fick, Helmholtz angles

### Functions for working with vectors

    * Angle between vectors
    * Gram-Schmidt orthogonalization
    * Projection
    * Normalization
    * Rotation
    * also work on data arrays

### Visualization 

   * Time-series data
   * 3D orientations
