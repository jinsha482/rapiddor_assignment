String statusChecker(String statusCode) {
  switch (statusCode) {
    case "200000":
      return "CODE_OK";
    case "201000":
      return "CODE_CREATED";
    case "202000":
      return "CODE_ACCEPTED";
    case "204000":
      return "CODE_NO_CONTENT";
    //?------------------------------------ ( HTTP/400 For Bank Atm )
    case "400000":
      return "CODE_BAD_REQUEST";
    case "400001":
      return "CODE_MISSED_INPUT_PARAMETER";
    case "400002":
      return "CODE_WRONG_INPUT_PARAMETER";
    case "400003":
      return "CODE_WRONG_PASSWORD_RESET_TOKEN";
    case "400004":
      return "CODE_WRONG_RESET_OTP";
    case "400005":
      return "CODE_FILE_UPLOAD_ERROR";
    case "400006":
      return "CODE_IMAGE_UPLOAD_ERROR";
    case "400007":
      return "CODE_WRONG_OR_INVALID_OTP";
    //?------------------------------------ ( HTTP/400 For Bank Atm )
    case "BB40001":
      return "CODE_ERROR_REQUIRED_DATA_MISSING";
    case "BB40002":
      return "CODE_ERROR_INVALID_FIELD_LENGTH";
    case "BB40003":
      return "CODE_ERROR_INVALID_FIELD_TYPE";
    case "BB40004":
      return "CODE_ERROR_INVALID_FIELD_VALUE";
    case "BB40005":
      return "CODE_ERROR_INTERNAL_SYSTEM_ERROR";
    //?------------------------------------ ( HTTP/401 )
    case "401000":
      return "CODE_UNAUTHORIZED";
    case "401001":
      return "CODE_WRONG_AUTHORIZATION_TOKEN";
    case "401002":
      return "CODE_WRONG_LOGIN_OR_PASSWORD";
    case "401003":
      return "CODE_VERIFICATION_CODE_EXPIRED";
    case "401004":
      return "CODE_JOINING_DATE_REQUIRED";
    case "401005":
      return "CODE_CIVIL_ID_IS_NOT_VALID";
    case "401006":
      return "CODE_WRONG_VERIFICATION_CODE";
    case "401007":
      return "CODE_PIN_NOT_MATCH";
    case "401008":
      return "CODE_PIN_NUMBER_WRONG";
    case "401009":
      return "CODE_TIME_EXPIRED";
    case "401010":
      return "CODE_NOT_AUTHORIZED";
    case "401011":
      return "CODE_DURATION_REQUIRED";
    case "401012":
      return "CODE_WITHDRAWAL_FEES_REQUIRED";
    case "401013":
      return "CODE_RPay_FEES_REQUIRED";
    case "401014":
      return "CODE_WITHDRAWALS_FROM_IS_NOT_VALID";
    case "401015":
      return "CODE_WITHDRAWALS_TO_IS_NOT_VALID";
    case "401016":
      return "CODE_COMMISSION_IS_NOT_VALID";
    case "401017":
      return "CODE_DIGITS_TO_IS_NOT_VALID";
    case "401018":
      return "CODE_DIGITS_FROM_IS_NOT_VALID";
    case "401019":
      return "CODE_WRONG_PIN_NUMBER";
    //?------------------------------------ ( HTTP/403 )
    case "403000":
      return "CODE_FORBIDDEN";
    case "403001":
      return "CODE_INSUFFICIENT_ACCESS_RIGHTS";
    case "403002":
      return "CODE_RESOURCE_IS_BUSY_TRY_AGAIN_LATER";
    case "403003":
      return "CODE_USER_IS_DISABLED";
    case "403004":
      return "CODE_EMPLOYEE_NOT_FOUND";
    case "403005":
      return "CODE_USER_ACCOUNT_LOCKED";
    case "403006":
      return "CODE_EXCHANGE_NOT_FOUND";
    case "403007":
      return "CODE_BANK_ACCOUNT_NOT_FOUND";
    case "403008":
      return "CODE_EXCHANGE_BRANCH_NOT_FOUND";
    case "403009":
      return "CODE_BANK_NOT_FOUND";
    case "403010":
      return "CODE_BANK_ATM_NOT_FOUND";
    case "403011":
      return "CODE_CIVIL_ID_NOT_FOUND";
    case "403012":
      return "CODE_UUID_NOT_FOUND";
    case "403013":
      return "CODE_LOAN_CANNOT_BE_DISPERSED";
    case "403014":
      return "CODE_ADMIN_NOT_FOUND";
    case "403015":
      return "CODE_SUPPORT_NOT_UPDATED";
    case "403016":
      return "CODE_INPUT_ITEM_NOT_FOUND";
    case "403017":
      return "CODE_SALARY_CANNOT_BE_DISPERSED";
    case "403018":
      return "CODE_VACATION_PAYMENT_CANNOT_BE_DISPERSED";
    case "403019":
      return "CODE_EMPLOYEE_VACATION_NOT_FOUND";
    case "403020":
      return "CODE_PHONE_NOT_FOUND";
    case "403021":
      return "CODE_CANNOT_REJECT_INTRA_TRANSFER";
    case "403022":
      return "CODE_CANNOT_CANCEL_INTRA_TRANSFER";
    case "403023":
      return "CODE_TERMS_PRIVACY_POLICY_NOT_FOUND";
    case "403024":
      return "CODE_USER_IS_NOT_ACTIVE";
    case "403025":
      return "CODE_USER_IS_NOT_PENDING";
    case "403026":
      return "CODE_USER_ACCOUNT_BLOCKED_BY_ADMIN";
    case "403027":
      return "CODE_TOTAL_SALARY_LESS_THAN_ZERO";
    case "403028":
      return "CODE_EMPLOYEE_IS_NOT_JOINED";
    case "403029":
      return "CODE_PIN_NUMBER_WRONG";
    case "403030":
      return "CODE_ATM_WITHDRAWAL_CANNOT_BE_CANCELLED";
    case "403031":
      return "CODE_ATM_WITHDRAWAL_REQUEST_CANNOT_BE_COMPLETED";
    case "403032":
      return "CODE_SELFIE_IMAGE_NOT_MATCH";
    case "403033":
      return "CODE_ACCOUNT_NOT_LOCKED";
    case "403034":
      return "CODE_CIVIL_ID_IS_NOT_MATCHED";
    case "403035":
      return "CODE_UPLOADED_CIVIL_ID_IS_NOT_VALID";
    case "403036":
      return "CODE_USER_STATUS_IS_PENDING_OR_EXPIRED";
    case "403037":
      return "CODE_TIME_EXPIRED";
    //?------------------------------------ ( HTTP/404 )
    case "404000":
      return "CODE_NOT_FOUND";
    case "404001":
      return "CODE_EMAIL_NOT_FOUND";
    case "404003":
      return "CODE_USER_NOT_FOUND";
    case "404004":
      return "CODE_PAYMENT_NOT_FOUND";
    case "404005":
      return "CODE_ISSUE_WITH_EXCHANGE";
    case "404006":
      return "CODE_INTRA_TRANSFER_NOT_FOUND";
    case "404007":
      return "CODE_PAYMENT_GATEWAY_ISSUE";
    case "404008":
      return "CODE_ATM_WITHDRAWAL_NOT_FOUND";
    case "404009":
      return "CODE_EXCHANGE_TRANSFER_NOT_FOUND";
    case "404010":
      return "CODE_EMPLOYEE_SALARY_NOT_FOUND";
    case "404011":
      return "CODE_SPONSOR_NAME_NOT_FOUND";
    case "404012":
      return "CODE_CIVIL_ID_IMAGE_NOT_FOUND";
    case "404013":
      return "CODE_AD_NOT_FOUND";
    //?------------------------------------ ( HTTP/405 )
    case "405000":
      return "CODE_WRONG_HTTP_METHOD";
    //?------------------------------------ ( HTTP/408 )

    case "408000":
      return "CODE_API_CALL_TIMEOUT";
    //?------------------------------------ ( HTTP/409 )
    case "409000":
      return "CODE_CONFLICT";
    case "409001":
      return "CODE_LOAN_ALREADY_EXISTS";
    case "409002":
      return "CODE_LOAN_NOT_FOUND";
    case "409003":
      return "CODE_PHONE_IS_ALREADY_IN_USE";
    case "409004":
      return "CODE_NAME_IS_ALREADY_IN_USE";
    case "409005":
      return "CODE_EMPLOYEE_ALREADY_REGISTERED";
    case "409006":
      return "CODE_EMPLOYEE_NOT_REGISTERED_IN_PACI";
    case "409007":
      return "CODE_EMPLOYEE_ALREADY_EXISTS";
    case "409008":
      return "CODE_LOAN_ACTIVE_WITH_EMPLOYEE";
    case "409009":
      return "CODE_BALANCE_IS_LOW";
    case "409010":
      return "CODE_USER_ALREADY_EXISTS";
    case "409011":
      return "CODE_EMPLOYEE_ALREADY_ON_VACATION";
    case "409012":
      return "CODE_ACCOUNT_NOT_CLOSED";
    case "409013":
      return "CODE_EMAIL_IS_ALREADY_IN_USE";
    case "409014":
      return "CODE_OVER_THAN_MAX_SALARY_LIMIT";
    case "409015":
      return "CODE_OVER_THAN_MAX_WALLET_LIMIT";
    case "409016":
      return "CODE_OVER_THAN_MAX_TRANSACTION_LIMIT";
    case "409017":
      return "CODE_OVER_THAN_MAX_TRANSACTION_AMOUNT_LIMIT";
    case "409018":
      return "CODE_OVER_THAN_MAX_BONUS_LIMIT";
    case "409019":
      return "CODE_ALREADY_RECEIVED_PLANE_TICKET";
    case "409020":
      return "CODE_ALREADY_RECEIVED_VACATION_PAYMENT";
    case "409021":
      return "CODE_OVER_THAN_MAX_PLANE_TICKET_LIMIT";
    case "409022":
      return "CODE_OVER_THAN_MAX_VACATION_PAYMENT_LIMIT";
    case "409023":
      return "CODE_HIGHER_THAN_LOAN_AMOUNT";
    case "409024":
      return "CODE_LOAN_PAYMENT_IS_HIGHER_THAN_TOTAL_RECEIVING_PAYMENT";
    case "409025":
      return "CODE_ALREADY_LOAN_ADJUSTMENT_PENDING";
    case "409026":
      return "CODE_INTRA_TRANSFER_ALREADY_CANCELLED";
    case "409027":
      return "CODE_EMPLOYER_ACCOUNT_IS_NOT_CLOSED";
    case "409028":
      return "CODE_EMPLOYEE_NOT_REGISTERED";
    case "409029":
      return "CODE_INTER_TRANSFER";
    case "409030":
      return "CODE_ALREADY_WITHDRAWAL_PENDING";
    case "409031":
      return "CODE_CANNOT_CREATE_EXCHANGE";
    case "409032":
      return "CODE_CANNOT_CREATE_EXCHANGE_TRANSFER";
    case "409033":
      return "CODE_NOT_REGISTERED_IN_RPay";
    case "409034":
      return "CODE_CIVIL_ID_BLOCKED";
    case "409035":
      return "CODE_CIVIL_ID_EXPIRED";
    case "409036":
      return "CODE_INSUFFICIENT_FUNDS";
    case "409037":
      return "CODE_OVER_THAN_MAX_WITHDRAWAL_LIMIT";
    case "409038":
      return "CODE_OVER_THAN_PER_TRANSACTION_WITHDRAWAL_LIMIT";
    case "409039":
      return "CODE_ACCOUNT_IS_CLOSED";
    case "409040":
      return "CODE_ALREADY_RECEIPT_GENERATED";
    case "409041":
      return "CODE_NOT_A_VALID_RESIDENCY_TYPE";
    case "409042":
      return "CODE_SPONSOR_NAME_NOT_MATCHED";
    case "409043":
      return "CODE_EMPLOYEE_NOT_WORKING_WITH_YOU";
    case "409044":
      return "CODE_ACCOUNT_IS_UNDER_VERIFICATION";
    //?------------------------------------ ( HTTP/50 )
    case "500000":
      return "CODE_UNKNOWN_ERROR";
    case "503000":
      return "CODE_MAINTENANCE_MODE";
    case "503001":
      return "INTERNET_NOT_AVAILABLE";
    case "303021":
      return "INTERNAL_INTERNET_NOT_AVAILABLE";
    case "140001":
      return "PLATFORM_EXCEPTION";
    case "150001":
      return "NOT_HANDLED_EXCEPTION";
    case "120001":
      return "FORMAT_EXCEPTION";
    default:
      return "UNKNOWN_ERROR";
  }
}
