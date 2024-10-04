/*
 * Copyright (c) 2010-2022 Arm Limited. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 */
#ifndef SvdConv_H
#define SvdConv_H

#include "SvdOptions.h"
#include "SvdDevice.h"
#include "ErrLog.h"

#include <string>
#include <set>


typedef enum SvdErr_t
{
  SVD_ERR_SUCCESS = 0,       // Success
  SVD_ERR_INVALID_PARAM = 1, // Invalid param, e.g. an unallowed NULL pointer
  SVD_ERR_NO_INPATH = 2,     // No input path specified
  SVD_ERR_VERIFY = 4,        // One or more verification actions failed
  SVD_ERR_NOT_FOUND = 8,     // File not found
  SVD_ERR_INTERNAL_ERR = 11  // Internal Error
} SVD_ERR;


class SvdConv {
public:
  SvdConv();
  ~SvdConv();

  int Check(int argc, const char* argv[], const char* envp[]);
  SVD_ERR CheckSvdFile();

  void PrintDevice(SvdDevice *device);
  void PrintPeripheral(SvdPeripheral *const peri, const std::__cxx11::list<SvdInterrupt *> &interrupts);
  void PrintRegistersContainer(SvdPeripheral *const peri);
  void PrintRegistersClusters(const std::__cxx11::list<SvdItem *> &childs, int numSpaces);
  void PrintRegisterWrapper(SvdRegister *reg, int numSpaces);
  void PrintFieldWrapper(SvdField *const field, int numSpaces);
  void PrintEnumContainerWrapper(SvdEnumContainer *const enumContainer, int numSpaces);
  void PrintEnum(SvdEnum *const &enum_, int numSpaces);
  void PrintEnumContainer(SvdEnumContainer *const enumContainer, int numSpaces);
  void PrintClusterWrapper(SvdCluster *cluster, int numSpaces);
  void PrintCluster(SvdCluster *cluster, int numSpaces);
  void PrintRegister(SvdRegister *reg, int numSpaces);
  void PrintInterrupts(const std::__cxx11::list<SvdInterrupt *> &interrupts);
  void PrintAddressBlocks(SvdPeripheral *const peri);
  void PrintField(SvdField *field, int numSpaces);
  
  protected:
  bool InitMessageTable();

private:
  SvdOptions m_svdOptions;

  static const MsgTable msgTable;
  static const MsgTableStrict msgStrictTable;

};

#endif // SVDConv_H
