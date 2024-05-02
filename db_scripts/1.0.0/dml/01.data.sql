
INSERT INTO "public"."dfsp_levels" ("name", "level_type", "input_type", "parent", "validation_regex", "created_at", "updated_at", "id", "active") VALUES
('Bank', 'bank', 'select', 0, '', '2024-04-21 20:26:43.329691', '2024-04-21 20:26:43.329691', 1, 't'),
('Branch', 'branch', 'select', 1, '', '2024-04-21 20:26:43.329691', '2024-04-21 20:26:43.329691', 2, 't'),
('Account', 'account', 'input', 2, '^\d{9,18}$', '2024-04-21 20:26:43.329691', '2024-04-21 20:26:43.329691', 3, 't'),
('Mobile Wallet', 'mobile_wallet_provider', 'select', 0, '', '2024-04-21 20:26:43.329691', '2024-04-21 20:26:43.329691', 4, 't'),
('Mobile Number', 'mobile_number', 'input', 4, '^\d{10}$', '2024-04-21 20:26:43.329691', '2024-04-21 20:26:43.329691', 5, 't'),
('Email Wallet', 'email_wallet_provider', 'select', 0, NULL, '2024-04-30 06:23:18.40136', '2024-04-30 06:23:18.40136', 6, 't'),
('Email address', 'email_address', 'input', 6, '[A-Za-z0-9\._%+\-]+@[A-Za-z0-9\.\-]+\.[A-Za-z]{2,}', '2024-04-30 06:26:24.874837', '2024-04-30 06:26:24.874837', 7, 't');

INSERT INTO "public"."strategy" ("description", "strategy_type", "deconstruct_strategy", "construct_strategy", "created_at", "updated_at", "id", "active") VALUES
('Key Cloak', 'ID', '^token:(?P<sub>.[^.]*)@nationalId$', 'token:{sub}@nationalId', '2024-04-22 16:58:39.30516', '2024-04-22 16:58:39.30516', 1, 't'),
('Bank', 'FA', '^account_number:(?P<account_number>.*)\.branch_name:(?P<branch_name>.*)\.branch_code:(?P<branch_code>.*)\.bank_name:(?P<bank_name>.*)\.bank_code:(?P<bank_code>.*)\.fa_type:(?P<fa_type>.*)$', 'account_number:{account_number}.branch_name:{branch_name}.branch_code:{branch_code}.bank_name:{bank_name}.bank_code:{bank_code}.fa_type:{fa_type}', '2024-04-22 21:03:41.56273', '2024-04-22 21:03:41.56273', 2, 't'),
('Email', 'FA', '^email_address:(?P<email_address>.*)\.wallet_provider_name:(?P<wallet_provider_name>.*)\.wallet_provider_code:(?P<wallet_provider_code>.*)\.fa_type:(?P<fa_type>.*)$', 'email_address:{email_address}.wallet_provider_name:{wallet_provider_name}.wallet_provider_code:{wallet_provider_code}.fa_type:{fa_type}', '2024-04-22 21:03:41.56273', '2024-04-22 21:03:41.56273', 3, 't'),
('Phone', 'FA', '^mobile_number:(?P<mobile_number>.*)\.wallet_provider_name:(?P<wallet_provider_name>.*)\.wallet_provider_code:(?P<wallet_provider_code>.*)\.fa_type:(?P<fa_type>.*)$', 'mobile_number:{mobile_number}.wallet_provider_name:{wallet_provider_name}.wallet_provider_code:{wallet_provider_code}.fa_type:{fa_type}', '2024-04-22 21:03:41.56273', '2024-04-22 21:03:41.56273', 4, 't');

INSERT INTO "public"."dfsp_level_values" ("name", "code", "description", "parent", "level_id", "strategy_id", "created_at", "updated_at", "id", "active") VALUES
('HDFC Bank Ltd.', 'HDFC', 'HDFC Bank Limited', 0, 1, 2, '2024-04-21 20:31:41.549441', '2024-04-21 20:31:41.549441', 1000, 't'),
('HDFC Mumbai Central Branch', 'HDFC0000522', 'Khatija Mansion, 82 Cyrus Avenue, Dr. Anandrao Nair Road, Opp. Nair Hospital, Mumbai Central, Mumbai, Maharashtra - 400008', 1000, 2, NULL, '2024-04-21 20:31:41.549441', '2024-04-21 20:31:41.549441', 1001, 't'),
('HDFC Lajpat Nagar Central Market', 'HDFC0004479', 'Hdfc Bank Ltd L 112 Lajpat Nagar Central Market Delhi Delhi 110024', 1000, 2, NULL, '2024-04-21 20:31:41.549441', '2024-04-21 20:31:41.549441', 1002, 't'),
('CANARA Bank Ltd.', 'CANR', 'Canara Bank Limited', 0, 1, 2, '2024-04-21 20:31:41.549441', '2024-04-21 20:31:41.549441', 2000, 't'),
('Canara Maduravoyal Branch', 'CNRB0005893', 'South Bazar, Talap, Kannur 670002', 2000, 2, NULL, '2024-04-24 16:37:53.725764', '2024-04-24 16:37:53.725764', 2001, 't'),
('Canara Rah Khammam Branch', 'CNRB0002244', 'H No 1 7 700 71 Madhu Complex Jublipura Khammam 507008 Telangana', 2000, 2, NULL, '2024-04-24 16:37:53.725764', '2024-04-24 16:37:53.725764', 2002, 't'),
('T-Mobile Wallet', 'TMOB', 'T-Mobile Ltd', 0, 4, 4, '2024-04-24 16:39:34.889577', '2024-04-24 16:39:34.889577', 3000, 't'),
('Ola Money Wallet', 'OLAM', 'Ola Money', 0, 4, 4, '2024-04-30 06:27:52.256776', '2024-04-30 06:27:52.256776', 4000, 't'),
('PayPal Inc', 'PAYPAL', 'Paypal email wallet', 0, 6, 3, '2024-04-30 06:31:00.90639', '2024-04-30 06:31:00.90639', 5000, 't'),
('Google Wallet', 'GOOGL', 'Google Email Wallet', 0, 6, 3, '2024-04-30 06:32:07.130297', '2024-04-30 06:32:07.130297', 6000, 't');

INSERT INTO "public"."id_fa_mappings" ("id_value", "fa_value", "name", "phone", "additional_info", "created_at", "updated_at", "id", "active") VALUES
('token:b7733f15-c3e5-45c8-97d9-db5003a9b741@nationalId', 'account_number:1234567891.branch_name:Mumbai.branch_code:MUM1235.bank_name:HDFC Bank.bank_code:Canara.bank
', NULL, NULL, '[{"strategy_id": 2}]', '2024-04-29 08:24:59.090508', '2024-04-29 08:24:59.090516', 9, 't'),
('token:bcb67ba7-ee2f-44e2-87cf-9772e0169355@nationalId', 'account_number:3333333333333.branch_name:HDFC Lajpat Nagar Central Market.branch_code:HDFC0004479.bank_name:HDFC Bank Ltd..bank_code:HDFC.bank
', 'string', 'string', '[{"strategy_id": 2}]', '2024-05-02 04:56:53.866003', '2024-05-02 04:56:53.866005', 29, 't');

INSERT INTO "public"."login_providers" ("name", "type", "description", "login_button_text", "login_button_image_url", "authorization_parameters", "created_at", "updated_at", "id", "active", "strategy_id") VALUES
('Key Cloak', 'oauth2_auth_code', 'key cloak auth', 'key_cloak', 'https://login.url', '{
 "authorize_endpoint": "https://keycloak.dev.openg2p.net/realms/openg2p/protocol/openid-connect/auth",
  "token_endpoint": "https://keycloak.dev.openg2p.net/realms/openg2p/protocol/openid-connect/token",
  "validate_endpoint": "http://keycloak.keycloak/realms/openg2p/protocol/openid-connect/userinfo",
  "jwks_endpoint": "http://keycloak.keycloak/realms/openg2p/protocol/openid-connect/certs",
  "client_id": "openg2p-selfservice-client",
  "redirect_uri": "http://localhost:8000/oauth2/callback",
  "code_verifier": "",
  "client_secret": ""
}', '2024-04-22 11:21:17.723442', '2024-04-22 11:21:17.723442', 1, 't', 1),
('E Signet', 'oauth2_auth_code', 'e-signet', 'e_signet', 'https://login.url', '{
  "authorize_endpoint": "https://esignet.dev.openg2p.net/authorize",
  "token_endpoint": "https://esignet.dev.openg2p.net/v1/esignet/oauth/v2/token",
  "validate_endpoint": "https://esignet.dev.openg2p.net/v1/esignet/oidc/userinfo",
  "jwks_endpoint": "https://esignet.dev.openg2p.net/v1/esignet/oauth/.well-known/jwks.json",
  "client_id": "openg2p-selfservice-esignet",
  "client_assertion_type": "urn:ietf:params:oauth:client-assertion-type:jwt-bearer",
  "client_assertion_jwk": {},
  "response_type": "code",
  "scope": "openid profile email",
  "redirect_uri": "http://selfservice.qa.openg2p.net/api/oauth2/callback",
  "code_verifier": "_cHemmb3ZJIeSNj7ND1agM-G4HgmenFxPp3l-vnRKDU",
  "extra_authorize_parameters": {
    "acr_values":"mosip:idp:acr:generated-code mosip:idp:acr:biometrics mosip:idp:acr:linked-wallet",
    "claims": "{\"userinfo\":{\"name\":{\"essential\":true},\"phone_number\":{\"essential\":false},\"email\":{\"essential\":false},\"gender\":{\"essential\":true},\"birthdate\":{\"essential\":true},\"address\":{\"essential\":false},\"picture\":{\"essential\":false}},\"id_token\":{}}"
  }
}', '2024-04-22 12:14:52.174414', '2024-04-22 12:14:52.174414', 2, 't', NULL);