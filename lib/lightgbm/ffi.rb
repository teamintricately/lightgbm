module LightGBM
  module FFI
    extend ::FFI::Library
    ffi_lib ["lightgbm", "lib_lightgbm.so"]

    # https://github.com/microsoft/LightGBM/blob/master/include/LightGBM/c_api.h
    attach_function :LGBM_GetLastError, %i[], :string
    attach_function :LGBM_BoosterCreate, %i[pointer string pointer], :int
    attach_function :LGBM_BoosterCreateFromModelfile, %i[string pointer pointer], :int
    attach_function :LGBM_BoosterFree, %i[pointer], :int
    attach_function :LGBM_BoosterPredictForMat, %i[pointer pointer int int32 int32 int int int string pointer pointer], :int
  end
end
