--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: aws_accessanalyzer_analyzer_archive_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_accessanalyzer_analyzer_archive_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    analyzer_arn text,
    created_at timestamp without time zone,
    filter jsonb,
    rule_name text,
    updated_at timestamp without time zone
);


ALTER TABLE public.aws_accessanalyzer_analyzer_archive_rules OWNER TO postgres;

--
-- Name: aws_accessanalyzer_analyzer_findings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_accessanalyzer_analyzer_findings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    analyzer_arn text,
    analyzed_at timestamp without time zone,
    condition jsonb,
    created_at timestamp without time zone,
    id text,
    resource_owner_account text,
    resource_type text,
    status text,
    updated_at timestamp without time zone,
    action text[],
    error text,
    is_public boolean,
    principal jsonb,
    resource text,
    sources jsonb
);


ALTER TABLE public.aws_accessanalyzer_analyzer_findings OWNER TO postgres;

--
-- Name: aws_accessanalyzer_analyzers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_accessanalyzer_analyzers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    created_at timestamp without time zone,
    name text,
    status text,
    type text,
    last_resource_analyzed text,
    last_resource_analyzed_at timestamp without time zone,
    status_reason jsonb,
    tags jsonb
);


ALTER TABLE public.aws_accessanalyzer_analyzers OWNER TO postgres;

--
-- Name: aws_account_alternate_contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_account_alternate_contacts (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    alternate_contact_type text NOT NULL,
    email_address text,
    name text,
    phone_number text,
    title text
);


ALTER TABLE public.aws_account_alternate_contacts OWNER TO postgres;

--
-- Name: aws_account_contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_account_contacts (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    address_line1 text,
    city text,
    country_code text,
    full_name text,
    phone_number text,
    postal_code text,
    address_line2 text,
    address_line3 text,
    company_name text,
    district_or_county text,
    state_or_region text,
    website_url text
);


ALTER TABLE public.aws_account_contacts OWNER TO postgres;

--
-- Name: aws_acm_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_acm_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    certificate_authority_arn text,
    created_at timestamp without time zone,
    domain_name text,
    domain_validation_options jsonb,
    extended_key_usages jsonb,
    failure_reason text,
    imported_at timestamp without time zone,
    in_use_by text[],
    issued_at timestamp without time zone,
    issuer text,
    key_algorithm text,
    key_usages jsonb,
    not_after timestamp without time zone,
    not_before timestamp without time zone,
    options jsonb,
    renewal_eligibility text,
    renewal_summary jsonb,
    revocation_reason text,
    revoked_at timestamp without time zone,
    serial text,
    signature_algorithm text,
    status text,
    subject text,
    subject_alternative_names text[],
    type text
);


ALTER TABLE public.aws_acm_certificates OWNER TO postgres;

--
-- Name: aws_amp_rule_groups_namespaces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_amp_rule_groups_namespaces (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    workspace_arn text,
    arn text NOT NULL,
    created_at timestamp without time zone,
    data bytea,
    modified_at timestamp without time zone,
    name text,
    status jsonb,
    tags jsonb
);


ALTER TABLE public.aws_amp_rule_groups_namespaces OWNER TO postgres;

--
-- Name: aws_amp_workspaces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_amp_workspaces (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    alert_manager_definition jsonb,
    logging_configuration jsonb,
    arn text NOT NULL,
    created_at timestamp without time zone,
    status jsonb,
    workspace_id text,
    alias text,
    prometheus_endpoint text,
    tags jsonb
);


ALTER TABLE public.aws_amp_workspaces OWNER TO postgres;

--
-- Name: aws_amplify_apps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_amplify_apps (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    app_arn text,
    app_id text,
    create_time timestamp without time zone,
    default_domain text,
    description text,
    enable_basic_auth boolean,
    enable_branch_auto_build boolean,
    environment_variables jsonb,
    name text,
    platform text,
    repository text,
    update_time timestamp without time zone,
    auto_branch_creation_config jsonb,
    auto_branch_creation_patterns text[],
    basic_auth_credentials text,
    build_spec text,
    custom_headers text,
    custom_rules jsonb,
    enable_auto_branch_creation boolean,
    enable_branch_auto_deletion boolean,
    iam_service_role_arn text,
    production_branch jsonb,
    repository_clone_method text,
    tags jsonb
);


ALTER TABLE public.aws_amplify_apps OWNER TO postgres;

--
-- Name: aws_apigateway_api_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_api_keys (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    created_date timestamp without time zone,
    customer_id text,
    description text,
    enabled boolean,
    id text,
    last_updated_date timestamp without time zone,
    name text,
    stage_keys text[],
    tags jsonb,
    value text
);


ALTER TABLE public.aws_apigateway_api_keys OWNER TO postgres;

--
-- Name: aws_apigateway_client_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_client_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    client_certificate_id text,
    created_date timestamp without time zone,
    description text,
    expiration_date timestamp without time zone,
    pem_encoded_certificate text,
    tags jsonb
);


ALTER TABLE public.aws_apigateway_client_certificates OWNER TO postgres;

--
-- Name: aws_apigateway_domain_name_base_path_mappings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_domain_name_base_path_mappings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    domain_name_arn text,
    arn text NOT NULL,
    base_path text,
    rest_api_id text,
    stage text
);


ALTER TABLE public.aws_apigateway_domain_name_base_path_mappings OWNER TO postgres;

--
-- Name: aws_apigateway_domain_names; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_domain_names (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    certificate_arn text,
    certificate_name text,
    certificate_upload_date timestamp without time zone,
    distribution_domain_name text,
    distribution_hosted_zone_id text,
    domain_name text,
    domain_name_status text,
    domain_name_status_message text,
    endpoint_configuration jsonb,
    mutual_tls_authentication jsonb,
    ownership_verification_certificate_arn text,
    regional_certificate_arn text,
    regional_certificate_name text,
    regional_domain_name text,
    regional_hosted_zone_id text,
    security_policy text,
    tags jsonb
);


ALTER TABLE public.aws_apigateway_domain_names OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_authorizers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_authorizers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    arn text NOT NULL,
    auth_type text,
    authorizer_credentials text,
    authorizer_result_ttl_in_seconds bigint,
    authorizer_uri text,
    id text,
    identity_source text,
    identity_validation_expression text,
    name text,
    provider_ar_ns text[],
    type text
);


ALTER TABLE public.aws_apigateway_rest_api_authorizers OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_deployments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_deployments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    arn text NOT NULL,
    api_summary jsonb,
    created_date timestamp without time zone,
    description text,
    id text
);


ALTER TABLE public.aws_apigateway_rest_api_deployments OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_documentation_parts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_documentation_parts (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    arn text NOT NULL,
    id text,
    location jsonb,
    properties text
);


ALTER TABLE public.aws_apigateway_rest_api_documentation_parts OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_documentation_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_documentation_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    arn text NOT NULL,
    created_date timestamp without time zone,
    description text,
    version text
);


ALTER TABLE public.aws_apigateway_rest_api_documentation_versions OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_gateway_responses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_gateway_responses (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    arn text NOT NULL,
    default_response boolean,
    response_parameters jsonb,
    response_templates jsonb,
    response_type text,
    status_code text
);


ALTER TABLE public.aws_apigateway_rest_api_gateway_responses OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_models (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    arn text NOT NULL,
    model_template text,
    content_type text,
    description text,
    id text,
    name text,
    schema text
);


ALTER TABLE public.aws_apigateway_rest_api_models OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_request_validators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_request_validators (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    arn text NOT NULL,
    id text,
    name text,
    validate_request_body boolean,
    validate_request_parameters boolean
);


ALTER TABLE public.aws_apigateway_rest_api_request_validators OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_resource_method_integrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_resource_method_integrations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    resource_arn text,
    method_arn text,
    arn text NOT NULL,
    cache_key_parameters text[],
    cache_namespace text,
    connection_id text,
    connection_type text,
    content_handling text,
    credentials text,
    http_method text,
    integration_responses jsonb,
    passthrough_behavior text,
    request_parameters jsonb,
    request_templates jsonb,
    timeout_in_millis bigint,
    tls_config jsonb,
    type text,
    uri text
);


ALTER TABLE public.aws_apigateway_rest_api_resource_method_integrations OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_resource_methods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_resource_methods (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    resource_arn text,
    arn text NOT NULL,
    api_key_required boolean,
    authorization_scopes text[],
    authorization_type text,
    authorizer_id text,
    http_method text,
    method_integration jsonb,
    method_responses jsonb,
    operation_name text,
    request_models jsonb,
    request_parameters jsonb,
    request_validator_id text
);


ALTER TABLE public.aws_apigateway_rest_api_resource_methods OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_resources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_resources (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    arn text NOT NULL,
    id text,
    parent_id text,
    path text,
    path_part text,
    resource_methods jsonb
);


ALTER TABLE public.aws_apigateway_rest_api_resources OWNER TO postgres;

--
-- Name: aws_apigateway_rest_api_stages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_api_stages (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    rest_api_arn text,
    arn text NOT NULL,
    access_log_settings jsonb,
    cache_cluster_enabled boolean,
    cache_cluster_size text,
    cache_cluster_status text,
    canary_settings jsonb,
    client_certificate_id text,
    created_date timestamp without time zone,
    deployment_id text,
    description text,
    documentation_version text,
    last_updated_date timestamp without time zone,
    method_settings jsonb,
    stage_name text,
    tags jsonb,
    tracing_enabled boolean,
    variables jsonb,
    web_acl_arn text
);


ALTER TABLE public.aws_apigateway_rest_api_stages OWNER TO postgres;

--
-- Name: aws_apigateway_rest_apis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_rest_apis (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    api_key_source text,
    binary_media_types text[],
    created_date timestamp without time zone,
    description text,
    disable_execute_api_endpoint boolean,
    endpoint_configuration jsonb,
    id text,
    minimum_compression_size bigint,
    name text,
    policy text,
    tags jsonb,
    version text,
    warnings text[]
);


ALTER TABLE public.aws_apigateway_rest_apis OWNER TO postgres;

--
-- Name: aws_apigateway_usage_plan_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_usage_plan_keys (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    usage_plan_arn text,
    arn text NOT NULL,
    id text,
    name text,
    type text,
    value text
);


ALTER TABLE public.aws_apigateway_usage_plan_keys OWNER TO postgres;

--
-- Name: aws_apigateway_usage_plans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_usage_plans (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    arn text NOT NULL,
    api_stages jsonb,
    description text,
    id text,
    name text,
    product_code text,
    quota jsonb,
    tags jsonb,
    throttle jsonb
);


ALTER TABLE public.aws_apigateway_usage_plans OWNER TO postgres;

--
-- Name: aws_apigateway_vpc_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigateway_vpc_links (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    arn text NOT NULL,
    description text,
    id text,
    name text,
    status text,
    status_message text,
    tags jsonb,
    target_arns text[]
);


ALTER TABLE public.aws_apigateway_vpc_links OWNER TO postgres;

--
-- Name: aws_apigatewayv2_api_authorizers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_api_authorizers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    api_arn text,
    api_id text,
    arn text NOT NULL,
    name text,
    authorizer_credentials_arn text,
    authorizer_id text,
    authorizer_payload_format_version text,
    authorizer_result_ttl_in_seconds bigint,
    authorizer_type text,
    authorizer_uri text,
    enable_simple_responses boolean,
    identity_source text[],
    identity_validation_expression text,
    jwt_configuration jsonb
);


ALTER TABLE public.aws_apigatewayv2_api_authorizers OWNER TO postgres;

--
-- Name: aws_apigatewayv2_api_deployments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_api_deployments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    api_arn text,
    api_id text,
    arn text NOT NULL,
    auto_deployed boolean,
    created_date timestamp without time zone,
    deployment_id text,
    deployment_status text,
    deployment_status_message text,
    description text
);


ALTER TABLE public.aws_apigatewayv2_api_deployments OWNER TO postgres;

--
-- Name: aws_apigatewayv2_api_integration_responses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_api_integration_responses (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    api_integration_arn text,
    integration_id text,
    arn text NOT NULL,
    integration_response_key text,
    content_handling_strategy text,
    integration_response_id text,
    response_parameters jsonb,
    response_templates jsonb,
    template_selection_expression text
);


ALTER TABLE public.aws_apigatewayv2_api_integration_responses OWNER TO postgres;

--
-- Name: aws_apigatewayv2_api_integrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_api_integrations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    api_arn text,
    api_id text,
    arn text NOT NULL,
    api_gateway_managed boolean,
    connection_id text,
    connection_type text,
    content_handling_strategy text,
    credentials_arn text,
    description text,
    integration_id text,
    integration_method text,
    integration_response_selection_expression text,
    integration_subtype text,
    integration_type text,
    integration_uri text,
    passthrough_behavior text,
    payload_format_version text,
    request_parameters jsonb,
    request_templates jsonb,
    response_parameters jsonb,
    template_selection_expression text,
    timeout_in_millis bigint,
    tls_config jsonb
);


ALTER TABLE public.aws_apigatewayv2_api_integrations OWNER TO postgres;

--
-- Name: aws_apigatewayv2_api_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_api_models (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    api_arn text,
    api_id text,
    arn text NOT NULL,
    model_template text,
    name text,
    content_type text,
    description text,
    model_id text,
    schema text
);


ALTER TABLE public.aws_apigatewayv2_api_models OWNER TO postgres;

--
-- Name: aws_apigatewayv2_api_route_responses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_api_route_responses (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    api_route_arn text,
    route_id text,
    arn text NOT NULL,
    route_response_key text,
    model_selection_expression text,
    response_models jsonb,
    response_parameters jsonb,
    route_response_id text
);


ALTER TABLE public.aws_apigatewayv2_api_route_responses OWNER TO postgres;

--
-- Name: aws_apigatewayv2_api_routes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_api_routes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    api_arn text,
    api_id text,
    arn text NOT NULL,
    route_key text,
    api_gateway_managed boolean,
    api_key_required boolean,
    authorization_scopes text[],
    authorization_type text,
    authorizer_id text,
    model_selection_expression text,
    operation_name text,
    request_models jsonb,
    request_parameters jsonb,
    route_id text,
    route_response_selection_expression text,
    target text
);


ALTER TABLE public.aws_apigatewayv2_api_routes OWNER TO postgres;

--
-- Name: aws_apigatewayv2_api_stages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_api_stages (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    api_arn text,
    api_id text,
    arn text NOT NULL,
    stage_name text,
    access_log_settings jsonb,
    api_gateway_managed boolean,
    auto_deploy boolean,
    client_certificate_id text,
    created_date timestamp without time zone,
    default_route_settings jsonb,
    deployment_id text,
    description text,
    last_deployment_status_message text,
    last_updated_date timestamp without time zone,
    route_settings jsonb,
    stage_variables jsonb,
    tags jsonb
);


ALTER TABLE public.aws_apigatewayv2_api_stages OWNER TO postgres;

--
-- Name: aws_apigatewayv2_apis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_apis (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    arn text NOT NULL,
    id text,
    name text,
    protocol_type text,
    route_selection_expression text,
    api_endpoint text,
    api_gateway_managed boolean,
    api_id text,
    api_key_selection_expression text,
    cors_configuration jsonb,
    created_date timestamp without time zone,
    description text,
    disable_execute_api_endpoint boolean,
    disable_schema_validation boolean,
    import_info text[],
    tags jsonb,
    version text,
    warnings text[]
);


ALTER TABLE public.aws_apigatewayv2_apis OWNER TO postgres;

--
-- Name: aws_apigatewayv2_domain_name_rest_api_mappings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_domain_name_rest_api_mappings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    domain_name_arn text,
    arn text NOT NULL,
    api_id text,
    stage text,
    api_mapping_id text,
    api_mapping_key text
);


ALTER TABLE public.aws_apigatewayv2_domain_name_rest_api_mappings OWNER TO postgres;

--
-- Name: aws_apigatewayv2_domain_names; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_domain_names (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    arn text NOT NULL,
    domain_name text,
    api_mapping_selection_expression text,
    domain_name_configurations jsonb,
    mutual_tls_authentication jsonb,
    tags jsonb
);


ALTER TABLE public.aws_apigatewayv2_domain_names OWNER TO postgres;

--
-- Name: aws_apigatewayv2_vpc_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apigatewayv2_vpc_links (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    arn text NOT NULL,
    name text,
    security_group_ids text[],
    subnet_ids text[],
    vpc_link_id text,
    created_date timestamp without time zone,
    tags jsonb,
    vpc_link_status text,
    vpc_link_status_message text,
    vpc_link_version text
);


ALTER TABLE public.aws_apigatewayv2_vpc_links OWNER TO postgres;

--
-- Name: aws_applicationautoscaling_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_applicationautoscaling_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    policy_arn text,
    policy_name text,
    policy_type text,
    resource_id text,
    scalable_dimension text,
    service_namespace text,
    alarms jsonb,
    step_scaling_policy_configuration jsonb,
    target_tracking_scaling_policy_configuration jsonb
);


ALTER TABLE public.aws_applicationautoscaling_policies OWNER TO postgres;

--
-- Name: aws_applicationautoscaling_scalable_targets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_applicationautoscaling_scalable_targets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    creation_time timestamp without time zone,
    max_capacity bigint,
    min_capacity bigint,
    resource_id text NOT NULL,
    role_arn text,
    scalable_dimension text,
    service_namespace text,
    suspended_state jsonb
);


ALTER TABLE public.aws_applicationautoscaling_scalable_targets OWNER TO postgres;

--
-- Name: aws_applicationautoscaling_scaling_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_applicationautoscaling_scaling_activities (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    activity_id text,
    cause text,
    description text,
    resource_id text NOT NULL,
    scalable_dimension text,
    service_namespace text,
    start_time timestamp without time zone,
    status_code text,
    details text,
    end_time timestamp without time zone,
    not_scaled_reasons jsonb,
    status_message text
);


ALTER TABLE public.aws_applicationautoscaling_scaling_activities OWNER TO postgres;

--
-- Name: aws_applicationautoscaling_scheduled_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_applicationautoscaling_scheduled_actions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    resource_id text,
    schedule text,
    scheduled_action_arn text,
    scheduled_action_name text,
    service_namespace text,
    end_time timestamp without time zone,
    scalable_dimension text,
    scalable_target_action jsonb,
    start_time timestamp without time zone,
    timezone text
);


ALTER TABLE public.aws_applicationautoscaling_scheduled_actions OWNER TO postgres;

--
-- Name: aws_apprunner_auto_scaling_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apprunner_auto_scaling_configurations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    auto_scaling_configuration_arn text,
    auto_scaling_configuration_name text,
    auto_scaling_configuration_revision bigint,
    created_at timestamp without time zone,
    deleted_at timestamp without time zone,
    latest boolean,
    max_concurrency bigint,
    max_size bigint,
    min_size bigint,
    status text
);


ALTER TABLE public.aws_apprunner_auto_scaling_configurations OWNER TO postgres;

--
-- Name: aws_apprunner_connections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apprunner_connections (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    connection_arn text,
    connection_name text,
    created_at timestamp without time zone,
    provider_type text,
    status text
);


ALTER TABLE public.aws_apprunner_connections OWNER TO postgres;

--
-- Name: aws_apprunner_custom_domains; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apprunner_custom_domains (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    enable_www_subdomain boolean,
    domain_name text,
    status text,
    certificate_validation_records jsonb
);


ALTER TABLE public.aws_apprunner_custom_domains OWNER TO postgres;

--
-- Name: aws_apprunner_observability_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apprunner_observability_configurations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_at timestamp without time zone,
    deleted_at timestamp without time zone,
    latest boolean,
    observability_configuration_arn text,
    observability_configuration_name text,
    observability_configuration_revision bigint,
    status text,
    trace_configuration jsonb
);


ALTER TABLE public.aws_apprunner_observability_configurations OWNER TO postgres;

--
-- Name: aws_apprunner_operations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apprunner_operations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    ended_at timestamp without time zone,
    id text,
    started_at timestamp without time zone,
    status text,
    target_arn text,
    type text,
    updated_at timestamp without time zone
);


ALTER TABLE public.aws_apprunner_operations OWNER TO postgres;

--
-- Name: aws_apprunner_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apprunner_services (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    auto_scaling_configuration_summary jsonb,
    created_at timestamp without time zone,
    instance_configuration jsonb,
    network_configuration jsonb,
    service_arn text,
    service_id text,
    service_name text,
    source_configuration jsonb,
    status text,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    encryption_configuration jsonb,
    health_check_configuration jsonb,
    observability_configuration jsonb,
    service_url text
);


ALTER TABLE public.aws_apprunner_services OWNER TO postgres;

--
-- Name: aws_apprunner_vpc_connectors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apprunner_vpc_connectors (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_at timestamp without time zone,
    deleted_at timestamp without time zone,
    security_groups text[],
    status text,
    subnets text[],
    vpc_connector_arn text,
    vpc_connector_name text,
    vpc_connector_revision bigint
);


ALTER TABLE public.aws_apprunner_vpc_connectors OWNER TO postgres;

--
-- Name: aws_apprunner_vpc_ingress_connections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_apprunner_vpc_ingress_connections (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    source_account_id text,
    tags jsonb,
    created_at timestamp without time zone,
    deleted_at timestamp without time zone,
    domain_name text,
    ingress_vpc_configuration jsonb,
    service_arn text,
    status text,
    vpc_ingress_connection_arn text,
    vpc_ingress_connection_name text
);


ALTER TABLE public.aws_apprunner_vpc_ingress_connections OWNER TO postgres;

--
-- Name: aws_appstream_app_blocks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_app_blocks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    name text,
    setup_script_details jsonb,
    created_time timestamp without time zone,
    description text,
    display_name text,
    source_s3_location jsonb
);


ALTER TABLE public.aws_appstream_app_blocks OWNER TO postgres;

--
-- Name: aws_appstream_application_fleet_associations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_application_fleet_associations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    application_arn text NOT NULL,
    fleet_name text NOT NULL
);


ALTER TABLE public.aws_appstream_application_fleet_associations OWNER TO postgres;

--
-- Name: aws_appstream_applications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_applications (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    app_block_arn text,
    created_time timestamp without time zone,
    description text,
    display_name text,
    enabled boolean,
    icon_s3_location jsonb,
    icon_url text,
    instance_families text[],
    launch_parameters text,
    launch_path text,
    metadata jsonb,
    name text,
    platforms text[],
    working_directory text
);


ALTER TABLE public.aws_appstream_applications OWNER TO postgres;

--
-- Name: aws_appstream_directory_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_directory_configs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    directory_name text NOT NULL,
    certificate_based_auth_properties jsonb,
    created_time timestamp without time zone,
    organizational_unit_distinguished_names text[],
    service_account_credentials jsonb
);


ALTER TABLE public.aws_appstream_directory_configs OWNER TO postgres;

--
-- Name: aws_appstream_fleets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_fleets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    compute_capacity_status jsonb,
    instance_type text,
    name text,
    state text,
    created_time timestamp without time zone,
    description text,
    disconnect_timeout_in_seconds bigint,
    display_name text,
    domain_join_info jsonb,
    enable_default_internet_access boolean,
    fleet_errors jsonb,
    fleet_type text,
    iam_role_arn text,
    idle_disconnect_timeout_in_seconds bigint,
    image_arn text,
    image_name text,
    max_concurrent_sessions bigint,
    max_user_duration_in_seconds bigint,
    platform text,
    session_script_s3_location jsonb,
    stream_view text,
    usb_device_filter_strings text[],
    vpc_config jsonb
);


ALTER TABLE public.aws_appstream_fleets OWNER TO postgres;

--
-- Name: aws_appstream_image_builders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_image_builders (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    name text,
    access_endpoints jsonb,
    appstream_agent_version text,
    created_time timestamp without time zone,
    description text,
    display_name text,
    domain_join_info jsonb,
    enable_default_internet_access boolean,
    iam_role_arn text,
    image_arn text,
    image_builder_errors jsonb,
    instance_type text,
    network_access_configuration jsonb,
    platform text,
    state text,
    state_change_reason jsonb,
    vpc_config jsonb
);


ALTER TABLE public.aws_appstream_image_builders OWNER TO postgres;

--
-- Name: aws_appstream_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_images (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    name text,
    applications jsonb,
    appstream_agent_version text,
    arn text NOT NULL,
    base_image_arn text,
    created_time timestamp without time zone,
    description text,
    display_name text,
    image_builder_name text,
    image_builder_supported boolean,
    image_errors jsonb,
    image_permissions jsonb,
    platform text,
    public_base_image_released_date timestamp without time zone,
    state text,
    state_change_reason jsonb,
    visibility text
);


ALTER TABLE public.aws_appstream_images OWNER TO postgres;

--
-- Name: aws_appstream_stack_entitlements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_stack_entitlements (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    stack_name text NOT NULL,
    name text NOT NULL,
    app_visibility text,
    attributes jsonb,
    created_time timestamp without time zone,
    description text,
    last_modified_time timestamp without time zone
);


ALTER TABLE public.aws_appstream_stack_entitlements OWNER TO postgres;

--
-- Name: aws_appstream_stack_user_associations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_stack_user_associations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    stack_name text NOT NULL,
    user_name text NOT NULL,
    authentication_type text NOT NULL,
    send_email_notification boolean
);


ALTER TABLE public.aws_appstream_stack_user_associations OWNER TO postgres;

--
-- Name: aws_appstream_stacks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_stacks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    name text,
    access_endpoints jsonb,
    application_settings jsonb,
    created_time timestamp without time zone,
    description text,
    display_name text,
    embed_host_domains text[],
    feedback_url text,
    redirect_url text,
    stack_errors jsonb,
    storage_connectors jsonb,
    streaming_experience_settings jsonb,
    user_settings jsonb
);


ALTER TABLE public.aws_appstream_stacks OWNER TO postgres;

--
-- Name: aws_appstream_usage_report_subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_usage_report_subscriptions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    s3_bucket_name text NOT NULL,
    last_generated_report_date timestamp without time zone,
    schedule text,
    subscription_errors jsonb
);


ALTER TABLE public.aws_appstream_usage_report_subscriptions OWNER TO postgres;

--
-- Name: aws_appstream_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appstream_users (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    authentication_type text,
    created_time timestamp without time zone,
    enabled boolean,
    first_name text,
    last_name text,
    status text,
    user_name text
);


ALTER TABLE public.aws_appstream_users OWNER TO postgres;

--
-- Name: aws_appsync_graphql_apis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_appsync_graphql_apis (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    additional_authentication_providers jsonb,
    api_id text,
    authentication_type text,
    lambda_authorizer_config jsonb,
    log_config jsonb,
    name text,
    open_id_connect_config jsonb,
    tags jsonb,
    uris jsonb,
    user_pool_config jsonb,
    waf_web_acl_arn text,
    xray_enabled boolean
);


ALTER TABLE public.aws_appsync_graphql_apis OWNER TO postgres;

--
-- Name: aws_athena_data_catalog_database_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_athena_data_catalog_database_tables (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    data_catalog_arn text NOT NULL,
    data_catalog_database_name text NOT NULL,
    name text NOT NULL,
    columns jsonb,
    create_time timestamp without time zone,
    last_access_time timestamp without time zone,
    parameters jsonb,
    partition_keys jsonb,
    table_type text
);


ALTER TABLE public.aws_athena_data_catalog_database_tables OWNER TO postgres;

--
-- Name: aws_athena_data_catalog_databases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_athena_data_catalog_databases (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    data_catalog_arn text NOT NULL,
    name text NOT NULL,
    description text,
    parameters jsonb
);


ALTER TABLE public.aws_athena_data_catalog_databases OWNER TO postgres;

--
-- Name: aws_athena_data_catalogs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_athena_data_catalogs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    name text,
    type text,
    description text,
    parameters jsonb
);


ALTER TABLE public.aws_athena_data_catalogs OWNER TO postgres;

--
-- Name: aws_athena_work_group_named_queries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_athena_work_group_named_queries (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    work_group_arn text,
    database text,
    name text,
    query_string text,
    description text,
    named_query_id text,
    work_group text
);


ALTER TABLE public.aws_athena_work_group_named_queries OWNER TO postgres;

--
-- Name: aws_athena_work_group_prepared_statements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_athena_work_group_prepared_statements (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    work_group_arn text,
    description text,
    last_modified_time timestamp without time zone,
    query_statement text,
    statement_name text,
    work_group_name text
);


ALTER TABLE public.aws_athena_work_group_prepared_statements OWNER TO postgres;

--
-- Name: aws_athena_work_group_query_executions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_athena_work_group_query_executions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    work_group_arn text,
    engine_version jsonb,
    execution_parameters text[],
    query text,
    query_execution_context jsonb,
    query_execution_id text,
    result_configuration jsonb,
    result_reuse_configuration jsonb,
    statement_type text,
    statistics jsonb,
    status jsonb,
    work_group text
);


ALTER TABLE public.aws_athena_work_group_query_executions OWNER TO postgres;

--
-- Name: aws_athena_work_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_athena_work_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    name text,
    configuration jsonb,
    creation_time timestamp without time zone,
    description text,
    state text
);


ALTER TABLE public.aws_athena_work_groups OWNER TO postgres;

--
-- Name: aws_autoscaling_group_lifecycle_hooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_autoscaling_group_lifecycle_hooks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    group_arn text,
    auto_scaling_group_name text,
    default_result text,
    global_timeout bigint,
    heartbeat_timeout bigint,
    lifecycle_hook_name text,
    lifecycle_transition text,
    notification_metadata text,
    notification_target_arn text,
    role_arn text
);


ALTER TABLE public.aws_autoscaling_group_lifecycle_hooks OWNER TO postgres;

--
-- Name: aws_autoscaling_group_scaling_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_autoscaling_group_scaling_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    group_arn text,
    arn text NOT NULL,
    adjustment_type text,
    alarms jsonb,
    auto_scaling_group_name text,
    cooldown bigint,
    enabled boolean,
    estimated_instance_warmup bigint,
    metric_aggregation_type text,
    min_adjustment_magnitude bigint,
    min_adjustment_step bigint,
    policy_arn text,
    policy_name text,
    policy_type text,
    predictive_scaling_configuration jsonb,
    scaling_adjustment bigint,
    step_adjustments jsonb,
    target_tracking_configuration jsonb
);


ALTER TABLE public.aws_autoscaling_group_scaling_policies OWNER TO postgres;

--
-- Name: aws_autoscaling_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_autoscaling_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    load_balancers jsonb,
    load_balancer_target_groups jsonb,
    arn text NOT NULL,
    tags jsonb,
    tags_raw jsonb,
    auto_scaling_group_name text,
    availability_zones text[],
    created_time timestamp without time zone,
    default_cooldown bigint,
    desired_capacity bigint,
    health_check_type text,
    max_size bigint,
    min_size bigint,
    auto_scaling_group_arn text,
    capacity_rebalance boolean,
    context text,
    default_instance_warmup bigint,
    desired_capacity_type text,
    enabled_metrics jsonb,
    health_check_grace_period bigint,
    instances jsonb,
    launch_configuration_name text,
    launch_template jsonb,
    load_balancer_names text[],
    max_instance_lifetime bigint,
    mixed_instances_policy jsonb,
    new_instances_protected_from_scale_in boolean,
    placement_group text,
    predicted_capacity bigint,
    service_linked_role_arn text,
    status text,
    suspended_processes jsonb,
    target_group_ar_ns text[],
    termination_policies text[],
    traffic_sources jsonb,
    vpc_zone_identifier text,
    warm_pool_configuration jsonb,
    warm_pool_size bigint,
    notification_configurations jsonb
);


ALTER TABLE public.aws_autoscaling_groups OWNER TO postgres;

--
-- Name: aws_autoscaling_launch_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_autoscaling_launch_configurations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    created_time timestamp without time zone,
    image_id text,
    instance_type text,
    launch_configuration_name text,
    associate_public_ip_address boolean,
    block_device_mappings jsonb,
    classic_link_vpc_id text,
    classic_link_vpc_security_groups text[],
    ebs_optimized boolean,
    iam_instance_profile text,
    instance_monitoring jsonb,
    kernel_id text,
    key_name text,
    launch_configuration_arn text,
    metadata_options jsonb,
    placement_tenancy text,
    ramdisk_id text,
    security_groups text[],
    spot_price text,
    user_data text
);


ALTER TABLE public.aws_autoscaling_launch_configurations OWNER TO postgres;

--
-- Name: aws_autoscaling_plan_resources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_autoscaling_plan_resources (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    resource_id text NOT NULL,
    scalable_dimension text,
    scaling_plan_name text NOT NULL,
    scaling_plan_version bigint,
    scaling_status_code text,
    service_namespace text,
    scaling_policies jsonb,
    scaling_status_message text
);


ALTER TABLE public.aws_autoscaling_plan_resources OWNER TO postgres;

--
-- Name: aws_autoscaling_plans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_autoscaling_plans (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    application_source jsonb,
    scaling_instructions jsonb,
    scaling_plan_name text NOT NULL,
    scaling_plan_version bigint,
    status_code text,
    creation_time timestamp without time zone,
    status_message text,
    status_start_time timestamp without time zone
);


ALTER TABLE public.aws_autoscaling_plans OWNER TO postgres;

--
-- Name: aws_autoscaling_scheduled_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_autoscaling_scheduled_actions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    auto_scaling_group_name text,
    desired_capacity bigint,
    end_time timestamp without time zone,
    max_size bigint,
    min_size bigint,
    recurrence text,
    scheduled_action_arn text,
    scheduled_action_name text,
    start_time timestamp without time zone,
    "time" timestamp without time zone,
    time_zone text
);


ALTER TABLE public.aws_autoscaling_scheduled_actions OWNER TO postgres;

--
-- Name: aws_availability_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_availability_zones (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    enabled boolean,
    partition text,
    region text,
    group_name text,
    messages jsonb,
    network_border_group text,
    opt_in_status text,
    parent_zone_id text,
    parent_zone_name text,
    region_name text NOT NULL,
    state text,
    zone_id text NOT NULL,
    zone_name text,
    zone_type text
);


ALTER TABLE public.aws_availability_zones OWNER TO postgres;

--
-- Name: aws_backup_global_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_backup_global_settings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    global_settings jsonb,
    last_update_time timestamp without time zone,
    result_metadata jsonb
);


ALTER TABLE public.aws_backup_global_settings OWNER TO postgres;

--
-- Name: aws_backup_plan_selections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_backup_plan_selections (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    plan_arn text,
    backup_plan_id text,
    backup_selection jsonb,
    creation_date timestamp without time zone,
    creator_request_id text,
    selection_id text,
    result_metadata jsonb
);


ALTER TABLE public.aws_backup_plan_selections OWNER TO postgres;

--
-- Name: aws_backup_plans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_backup_plans (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    advanced_backup_settings jsonb,
    backup_plan jsonb,
    backup_plan_arn text,
    backup_plan_id text,
    creation_date timestamp without time zone,
    creator_request_id text,
    deletion_date timestamp without time zone,
    last_execution_date timestamp without time zone,
    version_id text,
    result_metadata jsonb
);


ALTER TABLE public.aws_backup_plans OWNER TO postgres;

--
-- Name: aws_backup_region_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_backup_region_settings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    resource_type_management_preference jsonb,
    resource_type_opt_in_preference jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_backup_region_settings OWNER TO postgres;

--
-- Name: aws_backup_vault_recovery_points; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_backup_vault_recovery_points (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    vault_arn text,
    arn text NOT NULL,
    tags jsonb,
    backup_size_in_bytes bigint,
    backup_vault_arn text,
    backup_vault_name text,
    calculated_lifecycle jsonb,
    completion_date timestamp without time zone,
    composite_member_identifier text,
    created_by jsonb,
    creation_date timestamp without time zone,
    encryption_key_arn text,
    iam_role_arn text,
    is_encrypted boolean,
    is_parent boolean,
    last_restore_time timestamp without time zone,
    lifecycle jsonb,
    parent_recovery_point_arn text,
    recovery_point_arn text,
    resource_arn text,
    resource_type text,
    source_backup_vault_arn text,
    status text,
    status_message text
);


ALTER TABLE public.aws_backup_vault_recovery_points OWNER TO postgres;

--
-- Name: aws_backup_vaults; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_backup_vaults (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    access_policy jsonb,
    notifications jsonb,
    tags jsonb,
    backup_vault_arn text,
    backup_vault_name text,
    creation_date timestamp without time zone,
    creator_request_id text,
    encryption_key_arn text,
    lock_date timestamp without time zone,
    locked boolean,
    max_retention_days bigint,
    min_retention_days bigint,
    number_of_recovery_points bigint
);


ALTER TABLE public.aws_backup_vaults OWNER TO postgres;

--
-- Name: aws_batch_job_definitions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_batch_job_definitions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    job_definition_arn text,
    job_definition_name text,
    revision bigint,
    type text,
    container_orchestration_type text,
    container_properties jsonb,
    eks_properties jsonb,
    node_properties jsonb,
    parameters jsonb,
    platform_capabilities text[],
    propagate_tags boolean,
    retry_strategy jsonb,
    scheduling_priority bigint,
    status text,
    timeout jsonb
);


ALTER TABLE public.aws_batch_job_definitions OWNER TO postgres;

--
-- Name: aws_batch_job_queues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_batch_job_queues (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    compute_environment_order jsonb,
    job_queue_arn text,
    job_queue_name text,
    priority bigint,
    state text,
    scheduling_policy_arn text,
    status text,
    status_reason text
);


ALTER TABLE public.aws_batch_job_queues OWNER TO postgres;

--
-- Name: aws_batch_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_batch_jobs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    job_definition text,
    job_id text,
    job_name text,
    job_queue text,
    started_at bigint,
    status text,
    array_properties jsonb,
    attempts jsonb,
    container jsonb,
    created_at bigint,
    depends_on jsonb,
    eks_attempts jsonb,
    eks_properties jsonb,
    is_cancelled boolean,
    is_terminated boolean,
    job_arn text,
    node_details jsonb,
    node_properties jsonb,
    parameters jsonb,
    platform_capabilities text[],
    propagate_tags boolean,
    retry_strategy jsonb,
    scheduling_priority bigint,
    share_identifier text,
    status_reason text,
    stopped_at bigint,
    timeout jsonb
);


ALTER TABLE public.aws_batch_jobs OWNER TO postgres;

--
-- Name: aws_cloudformation_stack_resources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudformation_stack_resources (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    stack_id text,
    last_updated_timestamp timestamp without time zone,
    logical_resource_id text,
    resource_status text,
    resource_type text,
    drift_information jsonb,
    module_info jsonb,
    physical_resource_id text,
    resource_status_reason text
);


ALTER TABLE public.aws_cloudformation_stack_resources OWNER TO postgres;

--
-- Name: aws_cloudformation_stacks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudformation_stacks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    id text,
    arn text NOT NULL,
    tags jsonb,
    creation_time timestamp without time zone,
    stack_name text,
    stack_status text,
    capabilities text[],
    change_set_id text,
    deletion_time timestamp without time zone,
    description text,
    disable_rollback boolean,
    drift_information jsonb,
    enable_termination_protection boolean,
    last_updated_time timestamp without time zone,
    notification_ar_ns text[],
    outputs jsonb,
    parameters jsonb,
    parent_id text,
    role_arn text,
    rollback_configuration jsonb,
    root_id text,
    stack_id text,
    stack_status_reason text,
    timeout_in_minutes bigint
);


ALTER TABLE public.aws_cloudformation_stacks OWNER TO postgres;

--
-- Name: aws_cloudfront_cache_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudfront_cache_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    id text,
    arn text NOT NULL,
    cache_policy jsonb,
    type text
);


ALTER TABLE public.aws_cloudfront_cache_policies OWNER TO postgres;

--
-- Name: aws_cloudfront_distributions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudfront_distributions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    tags jsonb,
    arn text NOT NULL,
    distribution_config jsonb,
    domain_name text,
    id text,
    in_progress_invalidation_batches bigint,
    last_modified_time timestamp without time zone,
    status text,
    active_trusted_key_groups jsonb,
    active_trusted_signers jsonb,
    alias_icp_recordals jsonb
);


ALTER TABLE public.aws_cloudfront_distributions OWNER TO postgres;

--
-- Name: aws_cloudhsmv2_backups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudhsmv2_backups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    backup_id text,
    backup_state text,
    cluster_id text,
    copy_timestamp timestamp without time zone,
    create_timestamp timestamp without time zone,
    delete_timestamp timestamp without time zone,
    never_expires boolean,
    source_backup text,
    source_cluster text,
    source_region text
);


ALTER TABLE public.aws_cloudhsmv2_backups OWNER TO postgres;

--
-- Name: aws_cloudhsmv2_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudhsmv2_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    backup_policy text,
    backup_retention_policy jsonb,
    certificates jsonb,
    cluster_id text,
    create_timestamp timestamp without time zone,
    hsm_type text,
    hsms jsonb,
    pre_co_password text,
    security_group text,
    source_backup_id text,
    state text,
    state_message text,
    subnet_mapping jsonb,
    vpc_id text
);


ALTER TABLE public.aws_cloudhsmv2_clusters OWNER TO postgres;

--
-- Name: aws_cloudtrail_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudtrail_events (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cloud_trail_event jsonb,
    event_time timestamp without time zone,
    access_key_id text,
    event_id text NOT NULL,
    event_name text,
    event_source text,
    read_only text,
    resources jsonb,
    username text
);


ALTER TABLE public.aws_cloudtrail_events OWNER TO postgres;

--
-- Name: aws_cloudtrail_trail_event_selectors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudtrail_trail_event_selectors (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    trail_arn text,
    data_resources jsonb,
    exclude_management_event_sources text[],
    include_management_events boolean,
    read_write_type text
);


ALTER TABLE public.aws_cloudtrail_trail_event_selectors OWNER TO postgres;

--
-- Name: aws_cloudtrail_trails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudtrail_trails (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    cloudwatch_logs_log_group_name text,
    arn text NOT NULL,
    status jsonb,
    cloud_watch_logs_log_group_arn text,
    cloud_watch_logs_role_arn text,
    has_custom_event_selectors boolean,
    has_insight_selectors boolean,
    home_region text,
    include_global_service_events boolean,
    is_multi_region_trail boolean,
    is_organization_trail boolean,
    kms_key_id text,
    log_file_validation_enabled boolean,
    name text,
    s3_bucket_name text,
    s3_key_prefix text,
    sns_topic_arn text,
    sns_topic_name text,
    trail_arn text,
    tags jsonb
);


ALTER TABLE public.aws_cloudtrail_trails OWNER TO postgres;

--
-- Name: aws_cloudwatch_alarms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudwatch_alarms (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    dimensions jsonb,
    actions_enabled boolean,
    alarm_actions text[],
    alarm_arn text,
    alarm_configuration_updated_timestamp timestamp without time zone,
    alarm_description text,
    alarm_name text,
    comparison_operator text,
    datapoints_to_alarm bigint,
    evaluate_low_sample_count_percentile text,
    evaluation_periods bigint,
    evaluation_state text,
    extended_statistic text,
    insufficient_data_actions text[],
    metric_name text,
    metrics jsonb,
    namespace text,
    ok_actions text[],
    period bigint,
    state_reason text,
    state_reason_data text,
    state_transitioned_timestamp timestamp without time zone,
    state_updated_timestamp timestamp without time zone,
    state_value text,
    statistic text,
    threshold double precision,
    threshold_metric_id text,
    treat_missing_data text,
    unit text
);


ALTER TABLE public.aws_cloudwatch_alarms OWNER TO postgres;

--
-- Name: aws_cloudwatchlogs_log_group_subscription_filters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudwatchlogs_log_group_subscription_filters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    log_group_arn text NOT NULL,
    creation_time bigint NOT NULL,
    destination_arn text,
    distribution text,
    filter_name text NOT NULL,
    filter_pattern text,
    log_group_name text,
    role_arn text
);


ALTER TABLE public.aws_cloudwatchlogs_log_group_subscription_filters OWNER TO postgres;

--
-- Name: aws_cloudwatchlogs_log_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudwatchlogs_log_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    creation_time bigint,
    data_protection_status text,
    kms_key_id text,
    log_group_name text,
    metric_filter_count bigint,
    retention_in_days bigint,
    stored_bytes bigint
);


ALTER TABLE public.aws_cloudwatchlogs_log_groups OWNER TO postgres;

--
-- Name: aws_cloudwatchlogs_metric_filters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudwatchlogs_metric_filters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    log_group_arn text NOT NULL,
    creation_time bigint,
    filter_name text NOT NULL,
    filter_pattern text,
    log_group_name text,
    metric_transformations jsonb
);


ALTER TABLE public.aws_cloudwatchlogs_metric_filters OWNER TO postgres;

--
-- Name: aws_cloudwatchlogs_resource_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cloudwatchlogs_resource_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    policy_name text NOT NULL,
    policy_document jsonb,
    last_updated_time bigint
);


ALTER TABLE public.aws_cloudwatchlogs_resource_policies OWNER TO postgres;

--
-- Name: aws_codebuild_projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_codebuild_projects (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    artifacts jsonb,
    badge jsonb,
    build_batch_config jsonb,
    cache jsonb,
    concurrent_build_limit bigint,
    created timestamp without time zone,
    description text,
    encryption_key text,
    environment jsonb,
    file_system_locations jsonb,
    last_modified timestamp without time zone,
    logs_config jsonb,
    name text,
    project_visibility text,
    public_project_alias text,
    queued_timeout_in_minutes bigint,
    resource_access_role text,
    secondary_artifacts jsonb,
    secondary_source_versions jsonb,
    secondary_sources jsonb,
    service_role text,
    source jsonb,
    source_version text,
    timeout_in_minutes bigint,
    vpc_config jsonb,
    webhook jsonb
);


ALTER TABLE public.aws_codebuild_projects OWNER TO postgres;

--
-- Name: aws_codepipeline_pipelines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_codepipeline_pipelines (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    metadata jsonb,
    pipeline jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_codepipeline_pipelines OWNER TO postgres;

--
-- Name: aws_codepipeline_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_codepipeline_webhooks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    definition jsonb,
    url text,
    error_code text,
    error_message text,
    last_triggered timestamp without time zone
);


ALTER TABLE public.aws_codepipeline_webhooks OWNER TO postgres;

--
-- Name: aws_cognito_identity_pools; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cognito_identity_pools (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    arn text,
    id text NOT NULL,
    saml_provider_ar_ns text[],
    allow_unauthenticated_identities boolean,
    identity_pool_id text,
    identity_pool_name text,
    allow_classic_flow boolean,
    cognito_identity_providers jsonb,
    developer_provider_name text,
    identity_pool_tags jsonb,
    open_id_connect_provider_ar_ns text[],
    supported_login_providers jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_cognito_identity_pools OWNER TO postgres;

--
-- Name: aws_cognito_user_pool_identity_providers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cognito_user_pool_identity_providers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    user_pool_arn text,
    attribute_mapping jsonb,
    creation_date timestamp without time zone,
    idp_identifiers text[],
    last_modified_date timestamp without time zone,
    provider_details jsonb,
    provider_name text,
    provider_type text,
    user_pool_id text
);


ALTER TABLE public.aws_cognito_user_pool_identity_providers OWNER TO postgres;

--
-- Name: aws_cognito_user_pools; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_cognito_user_pools (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    id text NOT NULL,
    account_recovery_setting jsonb,
    admin_create_user_config jsonb,
    alias_attributes text[],
    arn text,
    auto_verified_attributes text[],
    creation_date timestamp without time zone,
    custom_domain text,
    deletion_protection text,
    device_configuration jsonb,
    domain text,
    email_configuration jsonb,
    email_configuration_failure text,
    email_verification_message text,
    email_verification_subject text,
    estimated_number_of_users bigint,
    lambda_config jsonb,
    last_modified_date timestamp without time zone,
    mfa_configuration text,
    name text,
    policies jsonb,
    schema_attributes jsonb,
    sms_authentication_message text,
    sms_configuration jsonb,
    sms_configuration_failure text,
    sms_verification_message text,
    status text,
    user_attribute_update_settings jsonb,
    user_pool_add_ons jsonb,
    user_pool_tags jsonb,
    username_attributes text[],
    username_configuration jsonb,
    verification_message_template jsonb
);


ALTER TABLE public.aws_cognito_user_pools OWNER TO postgres;

--
-- Name: aws_computeoptimizer_autoscaling_group_recommendations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_computeoptimizer_autoscaling_group_recommendations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    auto_scaling_group_arn text NOT NULL,
    auto_scaling_group_name text,
    current_configuration jsonb,
    current_performance_risk text,
    effective_recommendation_preferences jsonb,
    finding text,
    inferred_workload_types text[],
    last_refresh_timestamp timestamp without time zone,
    look_back_period_in_days double precision,
    recommendation_options jsonb,
    utilization_metrics jsonb
);


ALTER TABLE public.aws_computeoptimizer_autoscaling_group_recommendations OWNER TO postgres;

--
-- Name: aws_computeoptimizer_ebs_volume_recommendations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_computeoptimizer_ebs_volume_recommendations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    current_configuration jsonb,
    current_performance_risk text,
    finding text,
    last_refresh_timestamp timestamp without time zone,
    look_back_period_in_days double precision,
    utilization_metrics jsonb,
    volume_arn text NOT NULL,
    volume_recommendation_options jsonb
);


ALTER TABLE public.aws_computeoptimizer_ebs_volume_recommendations OWNER TO postgres;

--
-- Name: aws_computeoptimizer_ec2_instance_recommendations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_computeoptimizer_ec2_instance_recommendations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    current_instance_type text,
    current_performance_risk text,
    effective_recommendation_preferences jsonb,
    finding text,
    finding_reason_codes text[],
    inferred_workload_types text[],
    instance_arn text NOT NULL,
    instance_name text,
    last_refresh_timestamp timestamp without time zone,
    look_back_period_in_days double precision,
    recommendation_options jsonb,
    recommendation_sources jsonb,
    utilization_metrics jsonb
);


ALTER TABLE public.aws_computeoptimizer_ec2_instance_recommendations OWNER TO postgres;

--
-- Name: aws_computeoptimizer_ecs_service_recommendations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_computeoptimizer_ecs_service_recommendations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    current_performance_risk text,
    current_service_configuration jsonb,
    finding text,
    finding_reason_codes text[],
    last_refresh_timestamp timestamp without time zone,
    launch_type text,
    lookback_period_in_days double precision,
    service_arn text NOT NULL,
    service_recommendation_options jsonb,
    utilization_metrics jsonb
);


ALTER TABLE public.aws_computeoptimizer_ecs_service_recommendations OWNER TO postgres;

--
-- Name: aws_computeoptimizer_enrollment_statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_computeoptimizer_enrollment_statuses (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    last_updated_timestamp timestamp without time zone,
    member_accounts_enrolled boolean,
    number_of_member_accounts_opted_in bigint,
    status text,
    status_reason text
);


ALTER TABLE public.aws_computeoptimizer_enrollment_statuses OWNER TO postgres;

--
-- Name: aws_computeoptimizer_lambda_function_recommendations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_computeoptimizer_lambda_function_recommendations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    current_memory_size bigint,
    current_performance_risk text,
    finding text,
    finding_reason_codes text[],
    function_arn text NOT NULL,
    function_version text,
    last_refresh_timestamp timestamp without time zone,
    lookback_period_in_days double precision,
    memory_size_recommendation_options jsonb,
    number_of_invocations bigint,
    utilization_metrics jsonb
);


ALTER TABLE public.aws_computeoptimizer_lambda_function_recommendations OWNER TO postgres;

--
-- Name: aws_config_config_rule_compliances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_config_config_rule_compliances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    compliance jsonb,
    config_rule_name text
);


ALTER TABLE public.aws_config_config_rule_compliances OWNER TO postgres;

--
-- Name: aws_config_config_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_config_config_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    source jsonb,
    config_rule_arn text,
    config_rule_id text,
    config_rule_name text,
    config_rule_state text,
    created_by text,
    description text,
    evaluation_modes jsonb,
    input_parameters text,
    maximum_execution_frequency text,
    scope jsonb
);


ALTER TABLE public.aws_config_config_rules OWNER TO postgres;

--
-- Name: aws_config_configuration_recorders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_config_configuration_recorders (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    name text,
    recording_group jsonb,
    role_arn text,
    status_last_error_code text,
    status_last_error_message text,
    status_last_start_time timestamp without time zone,
    status_last_status text,
    status_last_status_change_time timestamp without time zone,
    status_last_stop_time timestamp without time zone,
    status_recording boolean
);


ALTER TABLE public.aws_config_configuration_recorders OWNER TO postgres;

--
-- Name: aws_config_conformance_pack_rule_compliances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_config_conformance_pack_rule_compliances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    conformance_pack_arn text,
    compliance_type text,
    config_rule_name text,
    controls text[],
    config_rule_invoked_time timestamp without time zone,
    evaluation_result_identifier jsonb,
    result_recorded_time timestamp without time zone,
    annotation text
);


ALTER TABLE public.aws_config_conformance_pack_rule_compliances OWNER TO postgres;

--
-- Name: aws_config_conformance_packs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_config_conformance_packs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    conformance_pack_arn text,
    conformance_pack_id text,
    conformance_pack_name text,
    conformance_pack_input_parameters jsonb,
    created_by text,
    delivery_s3_bucket text,
    delivery_s3_key_prefix text,
    last_update_requested_time timestamp without time zone,
    template_ssm_document_details jsonb
);


ALTER TABLE public.aws_config_conformance_packs OWNER TO postgres;

--
-- Name: aws_dax_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_dax_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    active_nodes bigint,
    cluster_arn text,
    cluster_discovery_endpoint jsonb,
    cluster_endpoint_encryption_type text,
    cluster_name text,
    description text,
    iam_role_arn text,
    node_ids_to_remove text[],
    node_type text,
    nodes jsonb,
    notification_configuration jsonb,
    parameter_group jsonb,
    preferred_maintenance_window text,
    sse_description jsonb,
    security_groups jsonb,
    status text,
    subnet_group text,
    total_nodes bigint
);


ALTER TABLE public.aws_dax_clusters OWNER TO postgres;

--
-- Name: aws_db_proxies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_db_proxies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    auth jsonb,
    created_date timestamp without time zone,
    db_proxy_arn text,
    db_proxy_name text,
    debug_logging boolean,
    endpoint text,
    engine_family text,
    idle_client_timeout bigint,
    require_tls boolean,
    role_arn text,
    status text,
    updated_date timestamp without time zone,
    vpc_id text,
    vpc_security_group_ids text[],
    vpc_subnet_ids text[]
);


ALTER TABLE public.aws_db_proxies OWNER TO postgres;

--
-- Name: aws_directconnect_connections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_directconnect_connections (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    id text NOT NULL,
    tags jsonb,
    aws_device text,
    aws_device_v2 text,
    aws_logical_device_id text,
    bandwidth text,
    connection_id text,
    connection_name text,
    connection_state text,
    encryption_mode text,
    has_logical_redundancy text,
    jumbo_frame_capable boolean,
    lag_id text,
    loa_issue_time timestamp without time zone,
    location text,
    mac_sec_capable boolean,
    mac_sec_keys jsonb,
    owner_account text,
    partner_name text,
    port_encryption_status text,
    provider_name text,
    vlan bigint
);


ALTER TABLE public.aws_directconnect_connections OWNER TO postgres;

--
-- Name: aws_directconnect_gateway_associations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_directconnect_gateway_associations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    gateway_arn text,
    gateway_id text,
    allowed_prefixes_to_direct_connect_gateway jsonb,
    associated_gateway jsonb,
    association_id text,
    association_state text,
    direct_connect_gateway_id text,
    direct_connect_gateway_owner_account text,
    state_change_error text,
    virtual_gateway_id text,
    virtual_gateway_owner_account text,
    virtual_gateway_region text
);


ALTER TABLE public.aws_directconnect_gateway_associations OWNER TO postgres;

--
-- Name: aws_directconnect_gateway_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_directconnect_gateway_attachments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    gateway_arn text,
    gateway_id text,
    attachment_state text,
    attachment_type text,
    direct_connect_gateway_id text,
    state_change_error text,
    virtual_interface_id text,
    virtual_interface_owner_account text,
    virtual_interface_region text
);


ALTER TABLE public.aws_directconnect_gateway_attachments OWNER TO postgres;

--
-- Name: aws_directconnect_gateways; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_directconnect_gateways (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    arn text NOT NULL,
    id text,
    amazon_side_asn bigint,
    direct_connect_gateway_id text,
    direct_connect_gateway_name text,
    direct_connect_gateway_state text,
    owner_account text,
    state_change_error text
);


ALTER TABLE public.aws_directconnect_gateways OWNER TO postgres;

--
-- Name: aws_directconnect_lags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_directconnect_lags (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    id text,
    tags jsonb,
    allows_hosted_connections boolean,
    aws_device text,
    aws_device_v2 text,
    aws_logical_device_id text,
    connections jsonb,
    connections_bandwidth text,
    encryption_mode text,
    has_logical_redundancy text,
    jumbo_frame_capable boolean,
    lag_id text,
    lag_name text,
    lag_state text,
    location text,
    mac_sec_capable boolean,
    mac_sec_keys jsonb,
    minimum_links bigint,
    number_of_connections bigint,
    owner_account text,
    provider_name text
);


ALTER TABLE public.aws_directconnect_lags OWNER TO postgres;

--
-- Name: aws_directconnect_locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_directconnect_locations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    available_mac_sec_port_speeds text[],
    available_port_speeds text[],
    available_providers text[],
    location_code text NOT NULL,
    location_name text
);


ALTER TABLE public.aws_directconnect_locations OWNER TO postgres;

--
-- Name: aws_directconnect_virtual_gateways; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_directconnect_virtual_gateways (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    id text NOT NULL,
    virtual_gateway_id text,
    virtual_gateway_state text
);


ALTER TABLE public.aws_directconnect_virtual_gateways OWNER TO postgres;

--
-- Name: aws_directconnect_virtual_interfaces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_directconnect_virtual_interfaces (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    id text,
    tags jsonb,
    address_family text,
    amazon_address text,
    amazon_side_asn bigint,
    asn bigint,
    auth_key text,
    aws_device_v2 text,
    aws_logical_device_id text,
    bgp_peers jsonb,
    connection_id text,
    customer_address text,
    customer_router_config text,
    direct_connect_gateway_id text,
    jumbo_frame_capable boolean,
    location text,
    mtu bigint,
    owner_account text,
    route_filter_prefixes jsonb,
    site_link_enabled boolean,
    virtual_gateway_id text,
    virtual_interface_id text,
    virtual_interface_name text,
    virtual_interface_state text,
    virtual_interface_type text,
    vlan bigint
);


ALTER TABLE public.aws_directconnect_virtual_interfaces OWNER TO postgres;

--
-- Name: aws_dms_replication_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_dms_replication_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    allocated_storage bigint,
    auto_minor_version_upgrade boolean,
    availability_zone text,
    dns_name_servers text,
    engine_version text,
    free_until timestamp without time zone,
    instance_create_time timestamp without time zone,
    kms_key_id text,
    multi_az boolean,
    network_type text,
    pending_modified_values jsonb,
    preferred_maintenance_window text,
    publicly_accessible boolean,
    replication_instance_arn text,
    replication_instance_class text,
    replication_instance_identifier text,
    replication_instance_ipv6_addresses text[],
    replication_instance_private_ip_address text,
    replication_instance_private_ip_addresses text[],
    replication_instance_public_ip_address text,
    replication_instance_public_ip_addresses text[],
    replication_instance_status text,
    replication_subnet_group jsonb,
    secondary_availability_zone text,
    vpc_security_groups jsonb,
    tags jsonb
);


ALTER TABLE public.aws_dms_replication_instances OWNER TO postgres;

--
-- Name: aws_docdb_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    arn text NOT NULL,
    certificate_arn text,
    certificate_identifier text,
    certificate_type text,
    thumbprint text,
    valid_from timestamp without time zone,
    valid_till timestamp without time zone
);


ALTER TABLE public.aws_docdb_certificates OWNER TO postgres;

--
-- Name: aws_docdb_cluster_parameter_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_cluster_parameter_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    parameters jsonb,
    db_cluster_parameter_group_name text,
    db_parameter_group_family text,
    db_cluster_parameter_group_arn text,
    description text
);


ALTER TABLE public.aws_docdb_cluster_parameter_groups OWNER TO postgres;

--
-- Name: aws_docdb_cluster_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_cluster_parameters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    allowed_values text,
    apply_method text,
    apply_type text,
    data_type text,
    description text,
    is_modifiable boolean,
    minimum_engine_version text,
    parameter_name text,
    parameter_value text,
    source text
);


ALTER TABLE public.aws_docdb_cluster_parameters OWNER TO postgres;

--
-- Name: aws_docdb_cluster_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_cluster_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    attributes jsonb,
    db_cluster_identifier text,
    db_cluster_snapshot_identifier text,
    availability_zones text[],
    cluster_create_time timestamp without time zone,
    db_cluster_snapshot_arn text,
    engine text,
    engine_version text,
    kms_key_id text,
    master_username text,
    percent_progress bigint,
    port bigint,
    snapshot_create_time timestamp without time zone,
    snapshot_type text,
    source_db_cluster_snapshot_arn text,
    status text,
    storage_encrypted boolean,
    vpc_id text
);


ALTER TABLE public.aws_docdb_cluster_snapshots OWNER TO postgres;

--
-- Name: aws_docdb_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    associated_roles jsonb,
    availability_zones text[],
    backup_retention_period bigint,
    clone_group_id text,
    cluster_create_time timestamp without time zone,
    db_cluster_arn text,
    db_cluster_identifier text,
    db_cluster_members jsonb,
    db_cluster_parameter_group text,
    db_subnet_group text,
    db_cluster_resource_id text,
    deletion_protection boolean,
    earliest_restorable_time timestamp without time zone,
    enabled_cloudwatch_logs_exports text[],
    endpoint text,
    engine text,
    engine_version text,
    hosted_zone_id text,
    kms_key_id text,
    latest_restorable_time timestamp without time zone,
    master_username text,
    multi_az boolean,
    percent_progress text,
    port bigint,
    preferred_backup_window text,
    preferred_maintenance_window text,
    read_replica_identifiers text[],
    reader_endpoint text,
    replication_source_identifier text,
    status text,
    storage_encrypted boolean,
    vpc_security_groups jsonb
);


ALTER TABLE public.aws_docdb_clusters OWNER TO postgres;

--
-- Name: aws_docdb_engine_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_engine_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    db_engine_description text,
    db_engine_version_description text,
    db_parameter_group_family text,
    engine text NOT NULL,
    engine_version text NOT NULL,
    exportable_log_types text[],
    supports_log_exports_to_cloudwatch_logs boolean,
    valid_upgrade_target jsonb
);


ALTER TABLE public.aws_docdb_engine_versions OWNER TO postgres;

--
-- Name: aws_docdb_event_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_event_categories (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    event_categories text[],
    source_type text
);


ALTER TABLE public.aws_docdb_event_categories OWNER TO postgres;

--
-- Name: aws_docdb_event_subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_event_subscriptions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cust_subscription_id text,
    customer_aws_id text,
    enabled boolean,
    event_categories_list text[],
    event_subscription_arn text,
    sns_topic_arn text,
    source_ids_list text[],
    source_type text,
    status text,
    subscription_creation_time text
);


ALTER TABLE public.aws_docdb_event_subscriptions OWNER TO postgres;

--
-- Name: aws_docdb_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_events (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    date timestamp without time zone,
    event_categories text[],
    message text,
    source_arn text,
    source_identifier text,
    source_type text
);


ALTER TABLE public.aws_docdb_events OWNER TO postgres;

--
-- Name: aws_docdb_global_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_global_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    database_name text,
    deletion_protection boolean,
    engine text,
    engine_version text,
    global_cluster_arn text,
    global_cluster_identifier text,
    global_cluster_members jsonb,
    global_cluster_resource_id text,
    status text,
    storage_encrypted boolean
);


ALTER TABLE public.aws_docdb_global_clusters OWNER TO postgres;

--
-- Name: aws_docdb_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    auto_minor_version_upgrade boolean,
    availability_zone text,
    backup_retention_period bigint,
    ca_certificate_identifier text,
    copy_tags_to_snapshot boolean,
    db_cluster_identifier text,
    db_instance_arn text,
    db_instance_class text,
    db_instance_identifier text,
    db_instance_status text,
    db_subnet_group jsonb,
    dbi_resource_id text,
    enabled_cloudwatch_logs_exports text[],
    endpoint jsonb,
    engine text,
    engine_version text,
    instance_create_time timestamp without time zone,
    kms_key_id text,
    latest_restorable_time timestamp without time zone,
    pending_modified_values jsonb,
    preferred_backup_window text,
    preferred_maintenance_window text,
    promotion_tier bigint,
    publicly_accessible boolean,
    status_infos jsonb,
    storage_encrypted boolean,
    vpc_security_groups jsonb
);


ALTER TABLE public.aws_docdb_instances OWNER TO postgres;

--
-- Name: aws_docdb_orderable_db_instance_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_orderable_db_instance_options (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    availability_zones jsonb,
    db_instance_class text,
    engine text,
    engine_version text,
    license_model text,
    vpc boolean
);


ALTER TABLE public.aws_docdb_orderable_db_instance_options OWNER TO postgres;

--
-- Name: aws_docdb_pending_maintenance_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_pending_maintenance_actions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    pending_maintenance_action_details jsonb,
    resource_identifier text
);


ALTER TABLE public.aws_docdb_pending_maintenance_actions OWNER TO postgres;

--
-- Name: aws_docdb_subnet_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_docdb_subnet_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    db_subnet_group_arn text,
    db_subnet_group_description text,
    db_subnet_group_name text,
    subnet_group_status text,
    subnets jsonb,
    vpc_id text
);


ALTER TABLE public.aws_docdb_subnet_groups OWNER TO postgres;

--
-- Name: aws_dynamodb_table_continuous_backups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_dynamodb_table_continuous_backups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    table_arn text,
    continuous_backups_status text,
    point_in_time_recovery_description jsonb
);


ALTER TABLE public.aws_dynamodb_table_continuous_backups OWNER TO postgres;

--
-- Name: aws_dynamodb_table_replica_auto_scalings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_dynamodb_table_replica_auto_scalings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    table_arn text,
    global_secondary_indexes jsonb,
    region_name text,
    replica_provisioned_read_capacity_auto_scaling_settings jsonb,
    replica_provisioned_write_capacity_auto_scaling_settings jsonb,
    replica_status text
);


ALTER TABLE public.aws_dynamodb_table_replica_auto_scalings OWNER TO postgres;

--
-- Name: aws_dynamodb_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_dynamodb_tables (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    archival_summary jsonb,
    attribute_definitions jsonb,
    billing_mode_summary jsonb,
    creation_date_time timestamp without time zone,
    global_secondary_indexes jsonb,
    global_table_version text,
    item_count bigint,
    key_schema jsonb,
    latest_stream_arn text,
    latest_stream_label text,
    local_secondary_indexes jsonb,
    provisioned_throughput jsonb,
    replicas jsonb,
    restore_summary jsonb,
    sse_description jsonb,
    stream_specification jsonb,
    table_arn text,
    table_class_summary jsonb,
    table_id text,
    table_name text,
    table_size_bytes bigint,
    table_status text
);


ALTER TABLE public.aws_dynamodb_tables OWNER TO postgres;

--
-- Name: aws_ec2_account_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_account_attributes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    partition text,
    attribute_name text NOT NULL,
    attribute_values jsonb
);


ALTER TABLE public.aws_ec2_account_attributes OWNER TO postgres;

--
-- Name: aws_ec2_byoip_cidrs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_byoip_cidrs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    cidr text NOT NULL,
    description text,
    state text,
    status_message text
);


ALTER TABLE public.aws_ec2_byoip_cidrs OWNER TO postgres;

--
-- Name: aws_ec2_customer_gateways; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_customer_gateways (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    bgp_asn text,
    certificate_arn text,
    customer_gateway_id text,
    device_name text,
    ip_address text,
    state text,
    type text
);


ALTER TABLE public.aws_ec2_customer_gateways OWNER TO postgres;

--
-- Name: aws_ec2_dhcp_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_dhcp_options (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    dhcp_configurations jsonb,
    dhcp_options_id text NOT NULL,
    owner_id text
);


ALTER TABLE public.aws_ec2_dhcp_options OWNER TO postgres;

--
-- Name: aws_ec2_ebs_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_ebs_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    attribute jsonb,
    tags jsonb,
    data_encryption_key_id text,
    description text,
    encrypted boolean,
    kms_key_id text,
    outpost_arn text,
    owner_alias text,
    owner_id text,
    progress text,
    restore_expiry_time timestamp without time zone,
    snapshot_id text,
    start_time timestamp without time zone,
    state text,
    state_message text,
    storage_tier text,
    volume_id text,
    volume_size bigint
);


ALTER TABLE public.aws_ec2_ebs_snapshots OWNER TO postgres;

--
-- Name: aws_ec2_ebs_volume_statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_ebs_volume_statuses (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    volume_arn text NOT NULL,
    actions jsonb,
    attachment_statuses jsonb,
    availability_zone text,
    events jsonb,
    outpost_arn text,
    volume_id text,
    volume_status jsonb
);


ALTER TABLE public.aws_ec2_ebs_volume_statuses OWNER TO postgres;

--
-- Name: aws_ec2_ebs_volumes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_ebs_volumes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    attachments jsonb,
    availability_zone text,
    create_time timestamp without time zone,
    encrypted boolean,
    fast_restored boolean,
    iops bigint,
    kms_key_id text,
    multi_attach_enabled boolean,
    outpost_arn text,
    size bigint,
    snapshot_id text,
    state text,
    throughput bigint,
    volume_id text,
    volume_type text
);


ALTER TABLE public.aws_ec2_ebs_volumes OWNER TO postgres;

--
-- Name: aws_ec2_egress_only_internet_gateways; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_egress_only_internet_gateways (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    attachments jsonb,
    egress_only_internet_gateway_id text
);


ALTER TABLE public.aws_ec2_egress_only_internet_gateways OWNER TO postgres;

--
-- Name: aws_ec2_eips; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_eips (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    allocation_id text,
    association_id text,
    carrier_ip text,
    customer_owned_ip text,
    customer_owned_ipv4_pool text,
    domain text,
    instance_id text,
    network_border_group text,
    network_interface_id text,
    network_interface_owner_id text,
    private_ip_address text,
    public_ip text,
    public_ipv4_pool text
);


ALTER TABLE public.aws_ec2_eips OWNER TO postgres;

--
-- Name: aws_ec2_flow_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_flow_logs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    creation_time timestamp without time zone,
    deliver_cross_account_role text,
    deliver_logs_error_message text,
    deliver_logs_permission_arn text,
    deliver_logs_status text,
    destination_options jsonb,
    flow_log_id text,
    flow_log_status text,
    log_destination text,
    log_destination_type text,
    log_format text,
    log_group_name text,
    max_aggregation_interval bigint,
    resource_id text,
    traffic_type text
);


ALTER TABLE public.aws_ec2_flow_logs OWNER TO postgres;

--
-- Name: aws_ec2_hosts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_hosts (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    allocation_time timestamp without time zone,
    allows_multiple_instance_types text,
    auto_placement text,
    availability_zone text,
    availability_zone_id text,
    available_capacity jsonb,
    client_token text,
    host_id text,
    host_properties jsonb,
    host_recovery text,
    host_reservation_id text,
    instances jsonb,
    member_of_service_linked_resource_group boolean,
    outpost_arn text,
    owner_id text,
    release_time timestamp without time zone,
    state text
);


ALTER TABLE public.aws_ec2_hosts OWNER TO postgres;

--
-- Name: aws_ec2_image_launch_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_image_launch_permissions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    image_arn text,
    "group" text,
    organization_arn text,
    organizational_unit_arn text,
    user_id text
);


ALTER TABLE public.aws_ec2_image_launch_permissions OWNER TO postgres;

--
-- Name: aws_ec2_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_images (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    arn text NOT NULL,
    tags jsonb,
    architecture text,
    block_device_mappings jsonb,
    boot_mode text,
    creation_date text,
    deprecation_time text,
    description text,
    ena_support boolean,
    hypervisor text,
    image_id text,
    image_location text,
    image_owner_alias text,
    image_type text,
    imds_support text,
    kernel_id text,
    name text,
    owner_id text,
    platform text,
    platform_details text,
    product_codes jsonb,
    public boolean,
    ramdisk_id text,
    root_device_name text,
    root_device_type text,
    sriov_net_support text,
    state text,
    state_reason jsonb,
    tpm_support text,
    usage_operation text,
    virtualization_type text
);


ALTER TABLE public.aws_ec2_images OWNER TO postgres;

--
-- Name: aws_ec2_instance_statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_instance_statuses (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    availability_zone text,
    events jsonb,
    instance_id text,
    instance_state jsonb,
    instance_status jsonb,
    outpost_arn text,
    system_status jsonb
);


ALTER TABLE public.aws_ec2_instance_statuses OWNER TO postgres;

--
-- Name: aws_ec2_instance_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_instance_types (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    auto_recovery_supported boolean,
    bare_metal boolean,
    burstable_performance_supported boolean,
    current_generation boolean,
    dedicated_hosts_supported boolean,
    ebs_info jsonb,
    fpga_info jsonb,
    free_tier_eligible boolean,
    gpu_info jsonb,
    hibernation_supported boolean,
    hypervisor text,
    inference_accelerator_info jsonb,
    instance_storage_info jsonb,
    instance_storage_supported boolean,
    instance_type text,
    memory_info jsonb,
    network_info jsonb,
    placement_group_info jsonb,
    processor_info jsonb,
    supported_boot_modes text[],
    supported_root_device_types text[],
    supported_usage_classes text[],
    supported_virtualization_types text[],
    v_cpu_info jsonb
);


ALTER TABLE public.aws_ec2_instance_types OWNER TO postgres;

--
-- Name: aws_ec2_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    state_transition_reason_time timestamp without time zone,
    tags jsonb,
    ami_launch_index bigint,
    architecture text,
    block_device_mappings jsonb,
    boot_mode text,
    capacity_reservation_id text,
    capacity_reservation_specification jsonb,
    client_token text,
    cpu_options jsonb,
    ebs_optimized boolean,
    elastic_gpu_associations jsonb,
    elastic_inference_accelerator_associations jsonb,
    ena_support boolean,
    enclave_options jsonb,
    hibernation_options jsonb,
    hypervisor text,
    iam_instance_profile jsonb,
    image_id text,
    instance_id text,
    instance_lifecycle text,
    instance_type text,
    ipv6_address text,
    kernel_id text,
    key_name text,
    launch_time timestamp without time zone,
    licenses jsonb,
    maintenance_options jsonb,
    metadata_options jsonb,
    monitoring jsonb,
    network_interfaces jsonb,
    outpost_arn text,
    placement jsonb,
    platform text,
    platform_details text,
    private_dns_name text,
    private_dns_name_options jsonb,
    private_ip_address text,
    product_codes jsonb,
    public_dns_name text,
    public_ip_address text,
    ramdisk_id text,
    root_device_name text,
    root_device_type text,
    security_groups jsonb,
    source_dest_check boolean,
    spot_instance_request_id text,
    sriov_net_support text,
    state jsonb,
    state_reason jsonb,
    state_transition_reason text,
    subnet_id text,
    tpm_support text,
    usage_operation text,
    usage_operation_update_time timestamp without time zone,
    virtualization_type text,
    vpc_id text
);


ALTER TABLE public.aws_ec2_instances OWNER TO postgres;

--
-- Name: aws_ec2_internet_gateways; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_internet_gateways (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    attachments jsonb,
    internet_gateway_id text,
    owner_id text
);


ALTER TABLE public.aws_ec2_internet_gateways OWNER TO postgres;

--
-- Name: aws_ec2_key_pairs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_key_pairs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    create_time timestamp without time zone,
    key_fingerprint text,
    key_name text,
    key_pair_id text,
    key_type text,
    public_key text
);


ALTER TABLE public.aws_ec2_key_pairs OWNER TO postgres;

--
-- Name: aws_ec2_launch_template_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_launch_template_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    version_number bigint NOT NULL,
    create_time timestamp without time zone,
    created_by text,
    default_version boolean,
    launch_template_data jsonb,
    launch_template_id text,
    launch_template_name text,
    version_description text
);


ALTER TABLE public.aws_ec2_launch_template_versions OWNER TO postgres;

--
-- Name: aws_ec2_launch_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_launch_templates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    create_time timestamp without time zone,
    created_by text,
    default_version_number bigint,
    latest_version_number bigint,
    launch_template_id text,
    launch_template_name text
);


ALTER TABLE public.aws_ec2_launch_templates OWNER TO postgres;

--
-- Name: aws_ec2_managed_prefix_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_managed_prefix_lists (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    request_account_id text NOT NULL,
    request_region text NOT NULL,
    arn text NOT NULL,
    tags jsonb,
    address_family text,
    max_entries bigint,
    owner_id text,
    prefix_list_arn text,
    prefix_list_id text,
    prefix_list_name text,
    state text,
    state_message text,
    version bigint
);


ALTER TABLE public.aws_ec2_managed_prefix_lists OWNER TO postgres;

--
-- Name: aws_ec2_nat_gateways; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_nat_gateways (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    connectivity_type text,
    create_time timestamp without time zone,
    delete_time timestamp without time zone,
    failure_code text,
    failure_message text,
    nat_gateway_addresses jsonb,
    nat_gateway_id text,
    provisioned_bandwidth jsonb,
    state text,
    subnet_id text,
    vpc_id text
);


ALTER TABLE public.aws_ec2_nat_gateways OWNER TO postgres;

--
-- Name: aws_ec2_network_acls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_network_acls (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    associations jsonb,
    entries jsonb,
    is_default boolean,
    network_acl_id text,
    owner_id text,
    vpc_id text
);


ALTER TABLE public.aws_ec2_network_acls OWNER TO postgres;

--
-- Name: aws_ec2_network_interfaces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_network_interfaces (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    association jsonb,
    attachment jsonb,
    availability_zone text,
    deny_all_igw_traffic boolean,
    description text,
    groups jsonb,
    interface_type text,
    ipv4_prefixes jsonb,
    ipv6_address text,
    ipv6_addresses jsonb,
    ipv6_native boolean,
    ipv6_prefixes jsonb,
    mac_address text,
    network_interface_id text,
    outpost_arn text,
    owner_id text,
    private_dns_name text,
    private_ip_address text,
    private_ip_addresses jsonb,
    requester_id text,
    requester_managed boolean,
    source_dest_check boolean,
    status text,
    subnet_id text,
    vpc_id text
);


ALTER TABLE public.aws_ec2_network_interfaces OWNER TO postgres;

--
-- Name: aws_ec2_regional_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_regional_configs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    ebs_encryption_enabled_by_default boolean,
    ebs_default_kms_key_id text
);


ALTER TABLE public.aws_ec2_regional_configs OWNER TO postgres;

--
-- Name: aws_ec2_reserved_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_reserved_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    availability_zone text,
    currency_code text,
    duration bigint,
    "end" timestamp without time zone,
    fixed_price double precision,
    instance_count bigint,
    instance_tenancy text,
    instance_type text,
    offering_class text,
    offering_type text,
    product_description text,
    recurring_charges jsonb,
    reserved_instances_id text,
    scope text,
    start timestamp without time zone,
    state text,
    usage_price double precision
);


ALTER TABLE public.aws_ec2_reserved_instances OWNER TO postgres;

--
-- Name: aws_ec2_route_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_route_tables (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    associations jsonb,
    owner_id text,
    propagating_vgws jsonb,
    route_table_id text,
    routes jsonb,
    vpc_id text
);


ALTER TABLE public.aws_ec2_route_tables OWNER TO postgres;

--
-- Name: aws_ec2_security_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_security_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    description text,
    group_id text,
    group_name text,
    ip_permissions jsonb,
    ip_permissions_egress jsonb,
    owner_id text,
    vpc_id text
);


ALTER TABLE public.aws_ec2_security_groups OWNER TO postgres;

--
-- Name: aws_ec2_spot_fleet_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_spot_fleet_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    spot_fleet_request_id text,
    instance_health text,
    instance_id text,
    instance_type text,
    spot_instance_request_id text
);


ALTER TABLE public.aws_ec2_spot_fleet_instances OWNER TO postgres;

--
-- Name: aws_ec2_spot_fleet_requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_spot_fleet_requests (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    activity_status text,
    create_time timestamp without time zone,
    spot_fleet_request_config jsonb,
    spot_fleet_request_id text NOT NULL,
    spot_fleet_request_state text
);


ALTER TABLE public.aws_ec2_spot_fleet_requests OWNER TO postgres;

--
-- Name: aws_ec2_spot_instance_requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_spot_instance_requests (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    actual_block_hourly_price text,
    availability_zone_group text,
    block_duration_minutes bigint,
    create_time timestamp without time zone,
    fault jsonb,
    instance_id text,
    instance_interruption_behavior text,
    launch_group text,
    launch_specification jsonb,
    launched_availability_zone text,
    product_description text,
    spot_instance_request_id text NOT NULL,
    spot_price text,
    state text,
    status jsonb,
    type text,
    valid_from timestamp without time zone,
    valid_until timestamp without time zone
);


ALTER TABLE public.aws_ec2_spot_instance_requests OWNER TO postgres;

--
-- Name: aws_ec2_subnets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_subnets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    assign_ipv6_address_on_creation boolean,
    availability_zone text,
    availability_zone_id text,
    available_ip_address_count bigint,
    cidr_block text,
    customer_owned_ipv4_pool text,
    default_for_az boolean,
    enable_dns64 boolean,
    enable_lni_at_device_index bigint,
    ipv6_cidr_block_association_set jsonb,
    ipv6_native boolean,
    map_customer_owned_ip_on_launch boolean,
    map_public_ip_on_launch boolean,
    outpost_arn text,
    owner_id text,
    private_dns_name_options_on_launch jsonb,
    state text,
    subnet_arn text,
    subnet_id text,
    vpc_id text
);


ALTER TABLE public.aws_ec2_subnets OWNER TO postgres;

--
-- Name: aws_ec2_transit_gateway_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_transit_gateway_attachments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    transit_gateway_arn text,
    tags jsonb,
    association jsonb,
    creation_time timestamp without time zone,
    resource_id text,
    resource_owner_id text,
    resource_type text,
    state text,
    transit_gateway_attachment_id text,
    transit_gateway_id text,
    transit_gateway_owner_id text
);


ALTER TABLE public.aws_ec2_transit_gateway_attachments OWNER TO postgres;

--
-- Name: aws_ec2_transit_gateway_multicast_domains; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_transit_gateway_multicast_domains (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    transit_gateway_arn text,
    tags jsonb,
    creation_time timestamp without time zone,
    options jsonb,
    owner_id text,
    state text,
    transit_gateway_id text,
    transit_gateway_multicast_domain_arn text,
    transit_gateway_multicast_domain_id text
);


ALTER TABLE public.aws_ec2_transit_gateway_multicast_domains OWNER TO postgres;

--
-- Name: aws_ec2_transit_gateway_peering_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_transit_gateway_peering_attachments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    transit_gateway_arn text,
    tags jsonb,
    accepter_tgw_info jsonb,
    accepter_transit_gateway_attachment_id text,
    creation_time timestamp without time zone,
    options jsonb,
    requester_tgw_info jsonb,
    state text,
    status jsonb,
    transit_gateway_attachment_id text
);


ALTER TABLE public.aws_ec2_transit_gateway_peering_attachments OWNER TO postgres;

--
-- Name: aws_ec2_transit_gateway_route_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_transit_gateway_route_tables (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    transit_gateway_arn text,
    tags jsonb,
    creation_time timestamp without time zone,
    default_association_route_table boolean,
    default_propagation_route_table boolean,
    state text,
    transit_gateway_id text,
    transit_gateway_route_table_id text
);


ALTER TABLE public.aws_ec2_transit_gateway_route_tables OWNER TO postgres;

--
-- Name: aws_ec2_transit_gateway_vpc_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_transit_gateway_vpc_attachments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    transit_gateway_arn text,
    tags jsonb,
    creation_time timestamp without time zone,
    options jsonb,
    state text,
    subnet_ids text[],
    transit_gateway_attachment_id text,
    transit_gateway_id text,
    vpc_id text,
    vpc_owner_id text
);


ALTER TABLE public.aws_ec2_transit_gateway_vpc_attachments OWNER TO postgres;

--
-- Name: aws_ec2_transit_gateways; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_transit_gateways (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    id text,
    arn text NOT NULL,
    tags jsonb,
    creation_time timestamp without time zone,
    description text,
    options jsonb,
    owner_id text,
    state text,
    transit_gateway_arn text,
    transit_gateway_id text
);


ALTER TABLE public.aws_ec2_transit_gateways OWNER TO postgres;

--
-- Name: aws_ec2_vpc_endpoint_service_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_vpc_endpoint_service_configurations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    acceptance_required boolean,
    availability_zones text[],
    base_endpoint_dns_names text[],
    gateway_load_balancer_arns text[],
    manages_vpc_endpoints boolean,
    network_load_balancer_arns text[],
    payer_responsibility text,
    private_dns_name text,
    private_dns_name_configuration jsonb,
    service_id text,
    service_name text,
    service_state text,
    service_type jsonb,
    supported_ip_address_types text[]
);


ALTER TABLE public.aws_ec2_vpc_endpoint_service_configurations OWNER TO postgres;

--
-- Name: aws_ec2_vpc_endpoint_service_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_vpc_endpoint_service_permissions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    tags jsonb,
    principal text,
    principal_type text,
    service_id text NOT NULL,
    service_permission_id text NOT NULL
);


ALTER TABLE public.aws_ec2_vpc_endpoint_service_permissions OWNER TO postgres;

--
-- Name: aws_ec2_vpc_endpoint_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_vpc_endpoint_services (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    acceptance_required boolean,
    availability_zones text[],
    base_endpoint_dns_names text[],
    manages_vpc_endpoints boolean,
    owner text,
    payer_responsibility text,
    private_dns_name text,
    private_dns_name_verification_state text,
    private_dns_names jsonb,
    service_id text,
    service_name text,
    service_type jsonb,
    supported_ip_address_types text[],
    vpc_endpoint_policy_supported boolean
);


ALTER TABLE public.aws_ec2_vpc_endpoint_services OWNER TO postgres;

--
-- Name: aws_ec2_vpc_endpoints; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_vpc_endpoints (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    creation_timestamp timestamp without time zone,
    dns_entries jsonb,
    dns_options jsonb,
    groups jsonb,
    ip_address_type text,
    last_error jsonb,
    network_interface_ids text[],
    owner_id text,
    policy_document text,
    private_dns_enabled boolean,
    requester_managed boolean,
    route_table_ids text[],
    service_name text,
    state text,
    subnet_ids text[],
    vpc_endpoint_id text,
    vpc_endpoint_type text,
    vpc_id text
);


ALTER TABLE public.aws_ec2_vpc_endpoints OWNER TO postgres;

--
-- Name: aws_ec2_vpc_peering_connections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_vpc_peering_connections (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    accepter_vpc_info jsonb,
    expiration_time timestamp without time zone,
    requester_vpc_info jsonb,
    status jsonb,
    vpc_peering_connection_id text
);


ALTER TABLE public.aws_ec2_vpc_peering_connections OWNER TO postgres;

--
-- Name: aws_ec2_vpcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_vpcs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    cidr_block text,
    cidr_block_association_set jsonb,
    dhcp_options_id text,
    instance_tenancy text,
    ipv6_cidr_block_association_set jsonb,
    is_default boolean,
    owner_id text,
    state text,
    vpc_id text
);


ALTER TABLE public.aws_ec2_vpcs OWNER TO postgres;

--
-- Name: aws_ec2_vpn_gateways; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ec2_vpn_gateways (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    amazon_side_asn bigint,
    availability_zone text,
    state text,
    type text,
    vpc_attachments jsonb,
    vpn_gateway_id text
);


ALTER TABLE public.aws_ec2_vpn_gateways OWNER TO postgres;

--
-- Name: aws_ecr_registries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecr_registries (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    registry_id text NOT NULL,
    replication_configuration jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_ecr_registries OWNER TO postgres;

--
-- Name: aws_ecr_registry_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecr_registry_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    registry_id text NOT NULL,
    policy_text jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_ecr_registry_policies OWNER TO postgres;

--
-- Name: aws_ecr_repositories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecr_repositories (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    policy_text jsonb,
    created_at timestamp without time zone,
    encryption_configuration jsonb,
    image_scanning_configuration jsonb,
    image_tag_mutability text,
    registry_id text,
    repository_arn text,
    repository_name text,
    repository_uri text
);


ALTER TABLE public.aws_ecr_repositories OWNER TO postgres;

--
-- Name: aws_ecr_repository_image_scan_findings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecr_repository_image_scan_findings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    image_tag text,
    image_digest text,
    image_scan_findings jsonb,
    image_scan_status jsonb,
    registry_id text,
    repository_name text
);


ALTER TABLE public.aws_ecr_repository_image_scan_findings OWNER TO postgres;

--
-- Name: aws_ecr_repository_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecr_repository_images (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    artifact_media_type text,
    image_digest text,
    image_manifest_media_type text,
    image_pushed_at timestamp without time zone,
    image_scan_findings_summary jsonb,
    image_scan_status jsonb,
    image_size_in_bytes bigint,
    image_tags text[],
    last_recorded_pull_time timestamp without time zone,
    registry_id text,
    repository_name text
);


ALTER TABLE public.aws_ecr_repository_images OWNER TO postgres;

--
-- Name: aws_ecrpublic_repositories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecrpublic_repositories (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_at timestamp without time zone,
    registry_id text,
    repository_arn text,
    repository_name text,
    repository_uri text
);


ALTER TABLE public.aws_ecrpublic_repositories OWNER TO postgres;

--
-- Name: aws_ecrpublic_repository_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecrpublic_repository_images (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    artifact_media_type text,
    image_digest text,
    image_manifest_media_type text,
    image_pushed_at timestamp without time zone,
    image_size_in_bytes bigint,
    image_tags text[],
    registry_id text,
    repository_name text
);


ALTER TABLE public.aws_ecrpublic_repository_images OWNER TO postgres;

--
-- Name: aws_ecs_cluster_container_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecs_cluster_container_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cluster_arn text,
    tags jsonb,
    agent_connected boolean,
    agent_update_status text,
    attachments jsonb,
    attributes jsonb,
    capacity_provider_name text,
    container_instance_arn text,
    ec2_instance_id text,
    health_status jsonb,
    pending_tasks_count bigint,
    registered_at timestamp without time zone,
    registered_resources jsonb,
    remaining_resources jsonb,
    running_tasks_count bigint,
    status text,
    status_reason text,
    version bigint,
    version_info jsonb
);


ALTER TABLE public.aws_ecs_cluster_container_instances OWNER TO postgres;

--
-- Name: aws_ecs_cluster_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecs_cluster_services (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    capacity_provider_strategy jsonb,
    cluster_arn text,
    created_at timestamp without time zone,
    created_by text,
    deployment_configuration jsonb,
    deployment_controller jsonb,
    deployments jsonb,
    desired_count bigint,
    enable_ecs_managed_tags boolean,
    enable_execute_command boolean,
    events jsonb,
    health_check_grace_period_seconds bigint,
    launch_type text,
    load_balancers jsonb,
    network_configuration jsonb,
    pending_count bigint,
    placement_constraints jsonb,
    placement_strategy jsonb,
    platform_family text,
    platform_version text,
    propagate_tags text,
    role_arn text,
    running_count bigint,
    scheduling_strategy text,
    service_arn text,
    service_name text,
    service_registries jsonb,
    status text,
    task_definition text,
    task_sets jsonb
);


ALTER TABLE public.aws_ecs_cluster_services OWNER TO postgres;

--
-- Name: aws_ecs_cluster_task_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecs_cluster_task_sets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    capacity_provider_strategy jsonb,
    cluster_arn text,
    computed_desired_count bigint,
    created_at timestamp without time zone,
    external_id text,
    id text,
    launch_type text,
    load_balancers jsonb,
    network_configuration jsonb,
    pending_count bigint,
    platform_family text,
    platform_version text,
    running_count bigint,
    scale jsonb,
    service_arn text,
    service_registries jsonb,
    stability_status text,
    stability_status_at timestamp without time zone,
    started_by text,
    status text,
    task_definition text,
    task_set_arn text,
    updated_at timestamp without time zone
);


ALTER TABLE public.aws_ecs_cluster_task_sets OWNER TO postgres;

--
-- Name: aws_ecs_cluster_tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecs_cluster_tasks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    task_protection jsonb,
    attachments jsonb,
    attributes jsonb,
    availability_zone text,
    capacity_provider_name text,
    cluster_arn text,
    connectivity text,
    connectivity_at timestamp without time zone,
    container_instance_arn text,
    containers jsonb,
    cpu text,
    created_at timestamp without time zone,
    desired_status text,
    enable_execute_command boolean,
    ephemeral_storage jsonb,
    execution_stopped_at timestamp without time zone,
    "group" text,
    health_status text,
    inference_accelerators jsonb,
    last_status text,
    launch_type text,
    memory text,
    overrides jsonb,
    platform_family text,
    platform_version text,
    pull_started_at timestamp without time zone,
    pull_stopped_at timestamp without time zone,
    started_at timestamp without time zone,
    started_by text,
    stop_code text,
    stopped_at timestamp without time zone,
    stopped_reason text,
    stopping_at timestamp without time zone,
    task_arn text,
    task_definition_arn text,
    version bigint
);


ALTER TABLE public.aws_ecs_cluster_tasks OWNER TO postgres;

--
-- Name: aws_ecs_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecs_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    active_services_count bigint,
    attachments jsonb,
    attachments_status text,
    capacity_providers text[],
    cluster_arn text,
    cluster_name text,
    configuration jsonb,
    default_capacity_provider_strategy jsonb,
    pending_tasks_count bigint,
    registered_container_instances_count bigint,
    running_tasks_count bigint,
    service_connect_defaults jsonb,
    settings jsonb,
    statistics jsonb,
    status text
);


ALTER TABLE public.aws_ecs_clusters OWNER TO postgres;

--
-- Name: aws_ecs_task_definitions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ecs_task_definitions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    compatibilities text[],
    container_definitions jsonb,
    cpu text,
    deregistered_at timestamp without time zone,
    ephemeral_storage jsonb,
    execution_role_arn text,
    family text,
    inference_accelerators jsonb,
    ipc_mode text,
    memory text,
    network_mode text,
    pid_mode text,
    placement_constraints jsonb,
    proxy_configuration jsonb,
    registered_at timestamp without time zone,
    registered_by text,
    requires_attributes jsonb,
    requires_compatibilities text[],
    revision bigint,
    runtime_platform jsonb,
    status text,
    task_definition_arn text,
    task_role_arn text,
    volumes jsonb
);


ALTER TABLE public.aws_ecs_task_definitions OWNER TO postgres;

--
-- Name: aws_efs_filesystems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_efs_filesystems (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    backup_policy_status text,
    tags jsonb,
    creation_time timestamp without time zone,
    creation_token text,
    file_system_id text,
    life_cycle_state text,
    number_of_mount_targets bigint,
    owner_id text,
    performance_mode text,
    size_in_bytes jsonb,
    availability_zone_id text,
    availability_zone_name text,
    encrypted boolean,
    file_system_arn text,
    kms_key_id text,
    name text,
    provisioned_throughput_in_mibps double precision,
    throughput_mode text
);


ALTER TABLE public.aws_efs_filesystems OWNER TO postgres;

--
-- Name: aws_eks_cluster_node_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eks_cluster_node_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    ami_type text,
    capacity_type text,
    cluster_name text,
    created_at timestamp without time zone,
    disk_size bigint,
    health jsonb,
    instance_types text[],
    labels jsonb,
    launch_template jsonb,
    modified_at timestamp without time zone,
    node_role text,
    nodegroup_arn text,
    nodegroup_name text,
    release_version text,
    remote_access jsonb,
    resources jsonb,
    scaling_config jsonb,
    status text,
    subnets text[],
    tags jsonb,
    taints jsonb,
    update_config jsonb,
    version text
);


ALTER TABLE public.aws_eks_cluster_node_groups OWNER TO postgres;

--
-- Name: aws_eks_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eks_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    certificate_authority jsonb,
    client_request_token text,
    connector_config jsonb,
    created_at timestamp without time zone,
    encryption_config jsonb,
    endpoint text,
    health jsonb,
    id text,
    identity jsonb,
    kubernetes_network_config jsonb,
    logging jsonb,
    name text,
    outpost_config jsonb,
    platform_version text,
    resources_vpc_config jsonb,
    role_arn text,
    status text,
    tags jsonb,
    version text
);


ALTER TABLE public.aws_eks_clusters OWNER TO postgres;

--
-- Name: aws_eks_fargate_profiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eks_fargate_profiles (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    cluster_name text,
    created_at timestamp without time zone,
    fargate_profile_arn text,
    fargate_profile_name text,
    pod_execution_role_arn text,
    selectors jsonb,
    status text,
    subnets text[],
    tags jsonb
);


ALTER TABLE public.aws_eks_fargate_profiles OWNER TO postgres;

--
-- Name: aws_elasticache_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    at_rest_encryption_enabled boolean,
    auth_token_enabled boolean,
    auth_token_last_modified_date timestamp without time zone,
    auto_minor_version_upgrade boolean,
    cache_cluster_create_time timestamp without time zone,
    cache_cluster_id text,
    cache_cluster_status text,
    cache_node_type text,
    cache_nodes jsonb,
    cache_parameter_group jsonb,
    cache_security_groups jsonb,
    cache_subnet_group_name text,
    client_download_landing_page text,
    configuration_endpoint jsonb,
    engine text,
    engine_version text,
    ip_discovery text,
    log_delivery_configurations jsonb,
    network_type text,
    notification_configuration jsonb,
    num_cache_nodes bigint,
    pending_modified_values jsonb,
    preferred_availability_zone text,
    preferred_maintenance_window text,
    preferred_outpost_arn text,
    replication_group_id text,
    replication_group_log_delivery_enabled boolean,
    security_groups jsonb,
    snapshot_retention_limit bigint,
    snapshot_window text,
    transit_encryption_enabled boolean,
    transit_encryption_mode text
);


ALTER TABLE public.aws_elasticache_clusters OWNER TO postgres;

--
-- Name: aws_elasticache_engine_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_engine_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    engine text NOT NULL,
    engine_version text NOT NULL,
    cache_engine_description text,
    cache_engine_version_description text,
    cache_parameter_group_family text
);


ALTER TABLE public.aws_elasticache_engine_versions OWNER TO postgres;

--
-- Name: aws_elasticache_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_events (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    _event_hash text NOT NULL,
    date timestamp without time zone,
    message text,
    source_identifier text,
    source_type text
);


ALTER TABLE public.aws_elasticache_events OWNER TO postgres;

--
-- Name: aws_elasticache_global_replication_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_global_replication_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    at_rest_encryption_enabled boolean,
    auth_token_enabled boolean,
    cache_node_type text,
    cluster_enabled boolean,
    engine text,
    engine_version text,
    global_node_groups jsonb,
    global_replication_group_description text,
    global_replication_group_id text,
    members jsonb,
    status text,
    transit_encryption_enabled boolean
);


ALTER TABLE public.aws_elasticache_global_replication_groups OWNER TO postgres;

--
-- Name: aws_elasticache_parameter_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_parameter_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    cache_parameter_group_family text,
    cache_parameter_group_name text,
    description text,
    is_global boolean
);


ALTER TABLE public.aws_elasticache_parameter_groups OWNER TO postgres;

--
-- Name: aws_elasticache_replication_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_replication_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    at_rest_encryption_enabled boolean,
    auth_token_enabled boolean,
    auth_token_last_modified_date timestamp without time zone,
    auto_minor_version_upgrade boolean,
    automatic_failover text,
    cache_node_type text,
    cluster_enabled boolean,
    configuration_endpoint jsonb,
    data_tiering text,
    description text,
    global_replication_group_info jsonb,
    ip_discovery text,
    kms_key_id text,
    log_delivery_configurations jsonb,
    member_clusters text[],
    member_clusters_outpost_arns text[],
    multi_az text,
    network_type text,
    node_groups jsonb,
    pending_modified_values jsonb,
    replication_group_create_time timestamp without time zone,
    replication_group_id text,
    snapshot_retention_limit bigint,
    snapshot_window text,
    snapshotting_cluster_id text,
    status text,
    transit_encryption_enabled boolean,
    transit_encryption_mode text,
    user_group_ids text[]
);


ALTER TABLE public.aws_elasticache_replication_groups OWNER TO postgres;

--
-- Name: aws_elasticache_reserved_cache_nodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_reserved_cache_nodes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    cache_node_count bigint,
    cache_node_type text,
    duration bigint,
    fixed_price double precision,
    offering_type text,
    product_description text,
    recurring_charges jsonb,
    reservation_arn text,
    reserved_cache_node_id text,
    reserved_cache_nodes_offering_id text,
    start_time timestamp without time zone,
    state text,
    usage_price double precision
);


ALTER TABLE public.aws_elasticache_reserved_cache_nodes OWNER TO postgres;

--
-- Name: aws_elasticache_reserved_cache_nodes_offerings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_reserved_cache_nodes_offerings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    cache_node_type text,
    duration bigint,
    fixed_price double precision,
    offering_type text,
    product_description text,
    recurring_charges jsonb,
    reserved_cache_nodes_offering_id text,
    usage_price double precision
);


ALTER TABLE public.aws_elasticache_reserved_cache_nodes_offerings OWNER TO postgres;

--
-- Name: aws_elasticache_service_updates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_service_updates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    auto_update_after_recommended_apply_by_date boolean,
    engine text,
    engine_version text,
    estimated_update_time text,
    service_update_description text,
    service_update_end_date timestamp without time zone,
    service_update_name text,
    service_update_recommended_apply_by_date timestamp without time zone,
    service_update_release_date timestamp without time zone,
    service_update_severity text,
    service_update_status text,
    service_update_type text
);


ALTER TABLE public.aws_elasticache_service_updates OWNER TO postgres;

--
-- Name: aws_elasticache_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    auto_minor_version_upgrade boolean,
    automatic_failover text,
    cache_cluster_create_time timestamp without time zone,
    cache_cluster_id text,
    cache_node_type text,
    cache_parameter_group_name text,
    cache_subnet_group_name text,
    data_tiering text,
    engine text,
    engine_version text,
    kms_key_id text,
    node_snapshots jsonb,
    num_cache_nodes bigint,
    num_node_groups bigint,
    port bigint,
    preferred_availability_zone text,
    preferred_maintenance_window text,
    preferred_outpost_arn text,
    replication_group_description text,
    replication_group_id text,
    snapshot_name text,
    snapshot_retention_limit bigint,
    snapshot_source text,
    snapshot_status text,
    snapshot_window text,
    topic_arn text,
    vpc_id text
);


ALTER TABLE public.aws_elasticache_snapshots OWNER TO postgres;

--
-- Name: aws_elasticache_subnet_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_subnet_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    cache_subnet_group_description text,
    cache_subnet_group_name text,
    subnets jsonb,
    supported_network_types text[],
    vpc_id text
);


ALTER TABLE public.aws_elasticache_subnet_groups OWNER TO postgres;

--
-- Name: aws_elasticache_update_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_update_actions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cache_cluster_id text,
    cache_node_update_status jsonb,
    engine text,
    estimated_update_time text,
    node_group_update_status jsonb,
    nodes_updated text,
    replication_group_id text,
    service_update_name text,
    service_update_recommended_apply_by_date timestamp without time zone,
    service_update_release_date timestamp without time zone,
    service_update_severity text,
    service_update_status text,
    service_update_type text,
    sla_met text,
    update_action_available_date timestamp without time zone,
    update_action_status text,
    update_action_status_modified_date timestamp without time zone
);


ALTER TABLE public.aws_elasticache_update_actions OWNER TO postgres;

--
-- Name: aws_elasticache_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_user_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    engine text,
    minimum_engine_version text,
    pending_changes jsonb,
    replication_groups text[],
    status text,
    user_group_id text,
    user_ids text[]
);


ALTER TABLE public.aws_elasticache_user_groups OWNER TO postgres;

--
-- Name: aws_elasticache_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticache_users (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    access_string text,
    authentication jsonb,
    engine text,
    minimum_engine_version text,
    status text,
    user_group_ids text[],
    user_id text,
    user_name text
);


ALTER TABLE public.aws_elasticache_users OWNER TO postgres;

--
-- Name: aws_elasticbeanstalk_application_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticbeanstalk_application_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    application_name text,
    application_version_arn text,
    build_arn text,
    date_created timestamp without time zone,
    date_updated timestamp without time zone,
    description text,
    source_build_information jsonb,
    source_bundle jsonb,
    status text,
    version_label text
);


ALTER TABLE public.aws_elasticbeanstalk_application_versions OWNER TO postgres;

--
-- Name: aws_elasticbeanstalk_applications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticbeanstalk_applications (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    date_created timestamp without time zone NOT NULL,
    tags jsonb,
    application_arn text,
    application_name text,
    configuration_templates text[],
    date_updated timestamp without time zone,
    description text,
    resource_lifecycle_config jsonb,
    versions text[]
);


ALTER TABLE public.aws_elasticbeanstalk_applications OWNER TO postgres;

--
-- Name: aws_elasticbeanstalk_configuration_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticbeanstalk_configuration_options (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    environment_id text,
    change_severity text,
    default_value text,
    max_length bigint,
    max_value bigint,
    min_value bigint,
    name text,
    namespace text,
    regex jsonb,
    user_defined boolean,
    value_options text[],
    value_type text,
    application_arn text
);


ALTER TABLE public.aws_elasticbeanstalk_configuration_options OWNER TO postgres;

--
-- Name: aws_elasticbeanstalk_configuration_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticbeanstalk_configuration_settings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    environment_id text,
    application_name text,
    date_created timestamp without time zone,
    date_updated timestamp without time zone,
    deployment_status text,
    description text,
    environment_name text,
    option_settings jsonb,
    platform_arn text,
    solution_stack_name text,
    template_name text,
    application_arn text
);


ALTER TABLE public.aws_elasticbeanstalk_configuration_settings OWNER TO postgres;

--
-- Name: aws_elasticbeanstalk_environments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticbeanstalk_environments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    arn text,
    region text,
    tags jsonb,
    id text NOT NULL,
    listeners jsonb,
    abortable_operation_in_progress boolean,
    application_name text,
    cname text,
    date_created timestamp without time zone,
    date_updated timestamp without time zone,
    description text,
    endpoint_url text,
    environment_arn text,
    environment_id text,
    environment_links jsonb,
    environment_name text,
    health text,
    health_status text,
    operations_role text,
    platform_arn text,
    resources jsonb,
    solution_stack_name text,
    status text,
    template_name text,
    tier jsonb,
    version_label text
);


ALTER TABLE public.aws_elasticbeanstalk_environments OWNER TO postgres;

--
-- Name: aws_elasticsearch_domains; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticsearch_domains (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    authorized_principals jsonb,
    tags jsonb,
    arn text NOT NULL,
    domain_id text,
    domain_name text,
    elasticsearch_cluster_config jsonb,
    access_policies text,
    advanced_options jsonb,
    advanced_security_options jsonb,
    auto_tune_options jsonb,
    change_progress_details jsonb,
    cognito_options jsonb,
    created boolean,
    deleted boolean,
    domain_endpoint_options jsonb,
    ebs_options jsonb,
    elasticsearch_version text,
    encryption_at_rest_options jsonb,
    endpoint text,
    endpoints jsonb,
    log_publishing_options jsonb,
    node_to_node_encryption_options jsonb,
    processing boolean,
    service_software_options jsonb,
    snapshot_options jsonb,
    upgrade_processing boolean,
    vpc_options jsonb
);


ALTER TABLE public.aws_elasticsearch_domains OWNER TO postgres;

--
-- Name: aws_elasticsearch_packages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticsearch_packages (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    id text NOT NULL,
    available_package_version text,
    created_at timestamp without time zone,
    error_details jsonb,
    last_updated_at timestamp without time zone,
    package_description text,
    package_id text,
    package_name text,
    package_status text,
    package_type text
);


ALTER TABLE public.aws_elasticsearch_packages OWNER TO postgres;

--
-- Name: aws_elasticsearch_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticsearch_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    version text NOT NULL,
    instance_types jsonb
);


ALTER TABLE public.aws_elasticsearch_versions OWNER TO postgres;

--
-- Name: aws_elasticsearch_vpc_endpoints; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elasticsearch_vpc_endpoints (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    id text NOT NULL,
    domain_arn text,
    endpoint text,
    status text,
    vpc_endpoint_id text,
    vpc_endpoint_owner text,
    vpc_options jsonb
);


ALTER TABLE public.aws_elasticsearch_vpc_endpoints OWNER TO postgres;

--
-- Name: aws_elastictranscoder_pipeline_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elastictranscoder_pipeline_jobs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    id text,
    input jsonb,
    inputs jsonb,
    output jsonb,
    output_key_prefix text,
    outputs jsonb,
    pipeline_id text,
    playlists jsonb,
    status text,
    timing jsonb,
    user_metadata jsonb
);


ALTER TABLE public.aws_elastictranscoder_pipeline_jobs OWNER TO postgres;

--
-- Name: aws_elastictranscoder_pipelines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elastictranscoder_pipelines (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    aws_kms_key_arn text,
    content_config jsonb,
    id text,
    input_bucket text,
    name text,
    notifications jsonb,
    output_bucket text,
    role text,
    status text,
    thumbnail_config jsonb
);


ALTER TABLE public.aws_elastictranscoder_pipelines OWNER TO postgres;

--
-- Name: aws_elastictranscoder_presets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elastictranscoder_presets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    audio jsonb,
    container text,
    description text,
    id text,
    name text,
    thumbnails jsonb,
    type text,
    video jsonb
);


ALTER TABLE public.aws_elastictranscoder_presets OWNER TO postgres;

--
-- Name: aws_elbv1_load_balancer_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elbv1_load_balancer_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    load_balancer_arn text,
    load_balancer_name text,
    policy_attribute_descriptions jsonb,
    policy_name text,
    policy_type_name text
);


ALTER TABLE public.aws_elbv1_load_balancer_policies OWNER TO postgres;

--
-- Name: aws_elbv1_load_balancers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elbv1_load_balancers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    availability_zones text[],
    backend_server_descriptions jsonb,
    canonical_hosted_zone_name text,
    canonical_hosted_zone_name_id text,
    created_time timestamp without time zone,
    dns_name text,
    health_check jsonb,
    instances jsonb,
    listener_descriptions jsonb,
    load_balancer_name text,
    policies jsonb,
    scheme text,
    security_groups text[],
    source_security_group jsonb,
    subnets text[],
    vpc_id text,
    tags jsonb,
    attributes jsonb
);


ALTER TABLE public.aws_elbv1_load_balancers OWNER TO postgres;

--
-- Name: aws_elbv2_listener_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elbv2_listener_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    listener_arn text,
    certificate_arn text,
    is_default boolean
);


ALTER TABLE public.aws_elbv2_listener_certificates OWNER TO postgres;

--
-- Name: aws_elbv2_listeners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elbv2_listeners (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    alpn_policy text[],
    certificates jsonb,
    default_actions jsonb,
    listener_arn text,
    load_balancer_arn text,
    port bigint,
    protocol text,
    ssl_policy text
);


ALTER TABLE public.aws_elbv2_listeners OWNER TO postgres;

--
-- Name: aws_elbv2_load_balancer_attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elbv2_load_balancer_attributes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    load_balancer_arn text,
    key text,
    value text
);


ALTER TABLE public.aws_elbv2_load_balancer_attributes OWNER TO postgres;

--
-- Name: aws_elbv2_load_balancers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elbv2_load_balancers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    web_acl_arn text,
    tags jsonb,
    arn text NOT NULL,
    availability_zones jsonb,
    canonical_hosted_zone_id text,
    created_time timestamp without time zone,
    customer_owned_ipv4_pool text,
    dns_name text,
    ip_address_type text,
    load_balancer_arn text,
    load_balancer_name text,
    scheme text,
    security_groups text[],
    state jsonb,
    type text,
    vpc_id text
);


ALTER TABLE public.aws_elbv2_load_balancers OWNER TO postgres;

--
-- Name: aws_elbv2_target_group_target_health_descriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elbv2_target_group_target_health_descriptions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    target_group_arn text,
    health_check_port text,
    target jsonb,
    target_health jsonb
);


ALTER TABLE public.aws_elbv2_target_group_target_health_descriptions OWNER TO postgres;

--
-- Name: aws_elbv2_target_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_elbv2_target_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    health_check_enabled boolean,
    health_check_interval_seconds bigint,
    health_check_path text,
    health_check_port text,
    health_check_protocol text,
    health_check_timeout_seconds bigint,
    healthy_threshold_count bigint,
    ip_address_type text,
    load_balancer_arns text[],
    matcher jsonb,
    port bigint,
    protocol text,
    protocol_version text,
    target_group_arn text,
    target_group_name text,
    target_type text,
    unhealthy_threshold_count bigint,
    vpc_id text
);


ALTER TABLE public.aws_elbv2_target_groups OWNER TO postgres;

--
-- Name: aws_emr_block_public_access_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_emr_block_public_access_configs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    block_public_access_configuration jsonb,
    block_public_access_configuration_metadata jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_emr_block_public_access_configs OWNER TO postgres;

--
-- Name: aws_emr_cluster_instance_fleets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_emr_cluster_instance_fleets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cluster_arn text NOT NULL,
    id text NOT NULL,
    instance_fleet_type text,
    instance_type_specifications jsonb,
    launch_specifications jsonb,
    name text,
    provisioned_on_demand_capacity bigint,
    provisioned_spot_capacity bigint,
    status jsonb,
    target_on_demand_capacity bigint,
    target_spot_capacity bigint
);


ALTER TABLE public.aws_emr_cluster_instance_fleets OWNER TO postgres;

--
-- Name: aws_emr_cluster_instance_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_emr_cluster_instance_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cluster_arn text NOT NULL,
    auto_scaling_policy jsonb,
    bid_price text,
    configurations jsonb,
    configurations_version bigint,
    custom_ami_id text,
    ebs_block_devices jsonb,
    ebs_optimized boolean,
    id text NOT NULL,
    instance_group_type text,
    instance_type text,
    last_successfully_applied_configurations jsonb,
    last_successfully_applied_configurations_version bigint,
    market text,
    name text,
    requested_instance_count bigint,
    running_instance_count bigint,
    shrink_policy jsonb,
    status jsonb
);


ALTER TABLE public.aws_emr_cluster_instance_groups OWNER TO postgres;

--
-- Name: aws_emr_cluster_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_emr_cluster_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    ebs_volumes jsonb,
    ec2_instance_id text,
    id text,
    instance_fleet_id text,
    instance_group_id text,
    instance_type text,
    market text,
    private_dns_name text,
    private_ip_address text,
    public_dns_name text,
    public_ip_address text,
    status jsonb
);


ALTER TABLE public.aws_emr_cluster_instances OWNER TO postgres;

--
-- Name: aws_emr_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_emr_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    applications jsonb,
    auto_scaling_role text,
    auto_terminate boolean,
    cluster_arn text,
    configurations jsonb,
    custom_ami_id text,
    ebs_root_volume_size bigint,
    ec2_instance_attributes jsonb,
    id text,
    instance_collection_type text,
    kerberos_attributes jsonb,
    log_encryption_kms_key_id text,
    log_uri text,
    master_public_dns_name text,
    name text,
    normalized_instance_hours bigint,
    os_release_label text,
    outpost_arn text,
    placement_groups jsonb,
    release_label text,
    repo_upgrade_on_boot text,
    requested_ami_version text,
    running_ami_version text,
    scale_down_behavior text,
    security_configuration text,
    service_role text,
    status jsonb,
    step_concurrency_level bigint,
    termination_protected boolean,
    visible_to_all_users boolean
);


ALTER TABLE public.aws_emr_clusters OWNER TO postgres;

--
-- Name: aws_emr_security_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_emr_security_configurations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    security_configuration jsonb,
    creation_date_time timestamp without time zone,
    name text NOT NULL
);


ALTER TABLE public.aws_emr_security_configurations OWNER TO postgres;

--
-- Name: aws_eventbridge_api_destinations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eventbridge_api_destinations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    api_destination_arn text,
    api_destination_state text,
    connection_arn text,
    creation_time timestamp without time zone,
    http_method text,
    invocation_endpoint text,
    invocation_rate_limit_per_second bigint,
    last_modified_time timestamp without time zone,
    name text
);


ALTER TABLE public.aws_eventbridge_api_destinations OWNER TO postgres;

--
-- Name: aws_eventbridge_archives; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eventbridge_archives (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    archive_name text,
    creation_time timestamp without time zone,
    event_count bigint,
    event_source_arn text,
    retention_days bigint,
    size_bytes bigint,
    state text,
    state_reason text
);


ALTER TABLE public.aws_eventbridge_archives OWNER TO postgres;

--
-- Name: aws_eventbridge_connections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eventbridge_connections (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    authorization_type text,
    connection_arn text,
    connection_state text,
    creation_time timestamp without time zone,
    last_authorized_time timestamp without time zone,
    last_modified_time timestamp without time zone,
    name text,
    state_reason text
);


ALTER TABLE public.aws_eventbridge_connections OWNER TO postgres;

--
-- Name: aws_eventbridge_endpoints; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eventbridge_endpoints (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    description text,
    endpoint_id text,
    endpoint_url text,
    event_buses jsonb,
    last_modified_time timestamp without time zone,
    name text,
    replication_config jsonb,
    role_arn text,
    routing_config jsonb,
    state text,
    state_reason text
);


ALTER TABLE public.aws_eventbridge_endpoints OWNER TO postgres;

--
-- Name: aws_eventbridge_event_bus_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eventbridge_event_bus_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    event_bus_arn text,
    tags jsonb,
    arn text NOT NULL,
    description text,
    event_bus_name text,
    event_pattern text,
    managed_by text,
    name text,
    role_arn text,
    schedule_expression text,
    state text
);


ALTER TABLE public.aws_eventbridge_event_bus_rules OWNER TO postgres;

--
-- Name: aws_eventbridge_event_buses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eventbridge_event_buses (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    name text,
    policy text
);


ALTER TABLE public.aws_eventbridge_event_buses OWNER TO postgres;

--
-- Name: aws_eventbridge_event_sources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eventbridge_event_sources (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    created_by text,
    creation_time timestamp without time zone,
    expiration_time timestamp without time zone,
    name text,
    state text
);


ALTER TABLE public.aws_eventbridge_event_sources OWNER TO postgres;

--
-- Name: aws_eventbridge_replays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_eventbridge_replays (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    event_end_time timestamp without time zone,
    event_last_replayed_time timestamp without time zone,
    event_source_arn text,
    event_start_time timestamp without time zone,
    replay_end_time timestamp without time zone,
    replay_name text,
    replay_start_time timestamp without time zone,
    state text,
    state_reason text
);


ALTER TABLE public.aws_eventbridge_replays OWNER TO postgres;

--
-- Name: aws_firehose_delivery_streams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_firehose_delivery_streams (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    delivery_stream_arn text,
    delivery_stream_name text,
    delivery_stream_status text,
    delivery_stream_type text,
    destinations jsonb,
    has_more_destinations boolean,
    version_id text,
    create_timestamp timestamp without time zone,
    delivery_stream_encryption_configuration jsonb,
    failure_description jsonb,
    last_update_timestamp timestamp without time zone,
    source jsonb
);


ALTER TABLE public.aws_firehose_delivery_streams OWNER TO postgres;

--
-- Name: aws_frauddetector_batch_imports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_batch_imports (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    completion_time text,
    event_type_name text,
    failed_records_count bigint,
    failure_reason text,
    iam_role_arn text,
    input_path text,
    job_id text,
    output_path text,
    processed_records_count bigint,
    start_time text,
    status text,
    total_records_count bigint
);


ALTER TABLE public.aws_frauddetector_batch_imports OWNER TO postgres;

--
-- Name: aws_frauddetector_batch_predictions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_batch_predictions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    completion_time text,
    detector_name text,
    detector_version text,
    event_type_name text,
    failure_reason text,
    iam_role_arn text,
    input_path text,
    job_id text,
    last_heartbeat_time text,
    output_path text,
    processed_records_count bigint,
    start_time text,
    status text,
    total_records_count bigint
);


ALTER TABLE public.aws_frauddetector_batch_predictions OWNER TO postgres;

--
-- Name: aws_frauddetector_detectors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_detectors (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_time text,
    description text,
    detector_id text,
    event_type_name text,
    last_updated_time text
);


ALTER TABLE public.aws_frauddetector_detectors OWNER TO postgres;

--
-- Name: aws_frauddetector_entity_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_entity_types (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_time text,
    description text,
    last_updated_time text,
    name text
);


ALTER TABLE public.aws_frauddetector_entity_types OWNER TO postgres;

--
-- Name: aws_frauddetector_event_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_event_types (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_time text,
    description text,
    entity_types text[],
    event_ingestion text,
    event_variables text[],
    ingested_event_statistics jsonb,
    labels text[],
    last_updated_time text,
    name text
);


ALTER TABLE public.aws_frauddetector_event_types OWNER TO postgres;

--
-- Name: aws_frauddetector_external_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_external_models (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    created_time text,
    input_configuration jsonb,
    invoke_model_endpoint_role_arn text,
    last_updated_time text,
    model_endpoint text,
    model_endpoint_status text,
    model_source text,
    output_configuration jsonb
);


ALTER TABLE public.aws_frauddetector_external_models OWNER TO postgres;

--
-- Name: aws_frauddetector_labels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_labels (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_time text,
    description text,
    last_updated_time text,
    name text
);


ALTER TABLE public.aws_frauddetector_labels OWNER TO postgres;

--
-- Name: aws_frauddetector_model_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_model_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    created_time text,
    external_events_detail jsonb,
    ingested_events_detail jsonb,
    last_updated_time text,
    model_id text,
    model_type text,
    model_version_number text,
    status text,
    training_data_schema jsonb,
    training_data_source text,
    training_result jsonb,
    training_result_v2 jsonb
);


ALTER TABLE public.aws_frauddetector_model_versions OWNER TO postgres;

--
-- Name: aws_frauddetector_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_models (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    created_time text,
    description text,
    event_type_name text,
    last_updated_time text,
    model_id text,
    model_type text
);


ALTER TABLE public.aws_frauddetector_models OWNER TO postgres;

--
-- Name: aws_frauddetector_outcomes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_outcomes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_time text,
    description text,
    last_updated_time text,
    name text
);


ALTER TABLE public.aws_frauddetector_outcomes OWNER TO postgres;

--
-- Name: aws_frauddetector_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    created_time text,
    description text,
    detector_id text,
    expression text,
    language text,
    last_updated_time text,
    outcomes text[],
    rule_id text,
    rule_version text
);


ALTER TABLE public.aws_frauddetector_rules OWNER TO postgres;

--
-- Name: aws_frauddetector_variables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_frauddetector_variables (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_time text,
    data_source text,
    data_type text,
    default_value text,
    description text,
    last_updated_time text,
    name text,
    variable_type text
);


ALTER TABLE public.aws_frauddetector_variables OWNER TO postgres;

--
-- Name: aws_fsx_backups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_fsx_backups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    id text NOT NULL,
    tags jsonb,
    backup_id text,
    creation_time timestamp without time zone,
    file_system jsonb,
    lifecycle text,
    type text,
    directory_information jsonb,
    failure_details jsonb,
    kms_key_id text,
    owner_id text,
    progress_percent bigint,
    resource_arn text,
    resource_type text,
    source_backup_id text,
    source_backup_region text,
    volume jsonb
);


ALTER TABLE public.aws_fsx_backups OWNER TO postgres;

--
-- Name: aws_fsx_data_repository_associations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_fsx_data_repository_associations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    association_id text,
    batch_import_meta_data_on_create boolean,
    creation_time timestamp without time zone,
    data_repository_path text,
    data_repository_subdirectories text[],
    failure_details jsonb,
    file_cache_id text,
    file_cache_path text,
    file_system_id text,
    file_system_path text,
    imported_file_chunk_size bigint,
    lifecycle text,
    nfs jsonb,
    resource_arn text,
    s3 jsonb
);


ALTER TABLE public.aws_fsx_data_repository_associations OWNER TO postgres;

--
-- Name: aws_fsx_data_repository_tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_fsx_data_repository_tasks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    creation_time timestamp without time zone,
    lifecycle text,
    task_id text,
    type text,
    capacity_to_release bigint,
    end_time timestamp without time zone,
    failure_details jsonb,
    file_cache_id text,
    file_system_id text,
    paths text[],
    report jsonb,
    resource_arn text,
    start_time timestamp without time zone,
    status jsonb
);


ALTER TABLE public.aws_fsx_data_repository_tasks OWNER TO postgres;

--
-- Name: aws_fsx_file_caches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_fsx_file_caches (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    creation_time timestamp without time zone,
    dns_name text,
    data_repository_association_ids text[],
    failure_details jsonb,
    file_cache_id text,
    file_cache_type text,
    file_cache_type_version text,
    kms_key_id text,
    lifecycle text,
    lustre_configuration jsonb,
    network_interface_ids text[],
    owner_id text,
    resource_arn text,
    storage_capacity bigint,
    subnet_ids text[],
    vpc_id text
);


ALTER TABLE public.aws_fsx_file_caches OWNER TO postgres;

--
-- Name: aws_fsx_file_systems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_fsx_file_systems (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    administrative_actions jsonb,
    creation_time timestamp without time zone,
    dns_name text,
    failure_details jsonb,
    file_system_id text,
    file_system_type text,
    file_system_type_version text,
    kms_key_id text,
    lifecycle text,
    lustre_configuration jsonb,
    network_interface_ids text[],
    ontap_configuration jsonb,
    open_zfs_configuration jsonb,
    owner_id text,
    resource_arn text,
    storage_capacity bigint,
    storage_type text,
    subnet_ids text[],
    vpc_id text,
    windows_configuration jsonb
);


ALTER TABLE public.aws_fsx_file_systems OWNER TO postgres;

--
-- Name: aws_fsx_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_fsx_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    administrative_actions jsonb,
    tags jsonb,
    creation_time timestamp without time zone,
    lifecycle text,
    lifecycle_transition_reason jsonb,
    name text,
    resource_arn text,
    snapshot_id text,
    volume_id text
);


ALTER TABLE public.aws_fsx_snapshots OWNER TO postgres;

--
-- Name: aws_fsx_storage_virtual_machines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_fsx_storage_virtual_machines (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    active_directory_configuration jsonb,
    creation_time timestamp without time zone,
    endpoints jsonb,
    file_system_id text,
    lifecycle text,
    lifecycle_transition_reason jsonb,
    name text,
    resource_arn text,
    root_volume_security_style text,
    storage_virtual_machine_id text,
    subtype text,
    uuid text
);


ALTER TABLE public.aws_fsx_storage_virtual_machines OWNER TO postgres;

--
-- Name: aws_fsx_volumes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_fsx_volumes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    administrative_actions jsonb,
    tags jsonb,
    creation_time timestamp without time zone,
    file_system_id text,
    lifecycle text,
    lifecycle_transition_reason jsonb,
    name text,
    ontap_configuration jsonb,
    open_zfs_configuration jsonb,
    resource_arn text,
    volume_id text,
    volume_type text
);


ALTER TABLE public.aws_fsx_volumes OWNER TO postgres;

--
-- Name: aws_glacier_data_retrieval_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glacier_data_retrieval_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    rules jsonb
);


ALTER TABLE public.aws_glacier_data_retrieval_policies OWNER TO postgres;

--
-- Name: aws_glacier_vault_access_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glacier_vault_access_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    vault_arn text NOT NULL,
    policy jsonb
);


ALTER TABLE public.aws_glacier_vault_access_policies OWNER TO postgres;

--
-- Name: aws_glacier_vault_lock_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glacier_vault_lock_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    vault_arn text NOT NULL,
    policy jsonb,
    creation_date text,
    expiration_date text,
    state text
);


ALTER TABLE public.aws_glacier_vault_lock_policies OWNER TO postgres;

--
-- Name: aws_glacier_vault_notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glacier_vault_notifications (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    vault_arn text NOT NULL,
    events text[],
    sns_topic text
);


ALTER TABLE public.aws_glacier_vault_notifications OWNER TO postgres;

--
-- Name: aws_glacier_vaults; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glacier_vaults (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    creation_date text,
    last_inventory_date text,
    number_of_archives bigint,
    size_in_bytes bigint,
    vault_arn text,
    vault_name text
);


ALTER TABLE public.aws_glacier_vaults OWNER TO postgres;

--
-- Name: aws_glue_classifiers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_classifiers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    name text NOT NULL,
    csv_classifier jsonb,
    grok_classifier jsonb,
    json_classifier jsonb,
    xml_classifier jsonb
);


ALTER TABLE public.aws_glue_classifiers OWNER TO postgres;

--
-- Name: aws_glue_connections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_connections (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    connection_properties jsonb,
    connection_type text,
    creation_time timestamp without time zone,
    description text,
    last_updated_by text,
    last_updated_time timestamp without time zone,
    match_criteria text[],
    name text,
    physical_connection_requirements jsonb
);


ALTER TABLE public.aws_glue_connections OWNER TO postgres;

--
-- Name: aws_glue_crawlers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_crawlers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    classifiers text[],
    configuration text,
    crawl_elapsed_time bigint,
    crawler_security_configuration text,
    creation_time timestamp without time zone,
    database_name text,
    description text,
    lake_formation_configuration jsonb,
    last_crawl jsonb,
    last_updated timestamp without time zone,
    lineage_configuration jsonb,
    name text,
    recrawl_policy jsonb,
    role text,
    schedule jsonb,
    schema_change_policy jsonb,
    state text,
    table_prefix text,
    targets jsonb,
    version bigint
);


ALTER TABLE public.aws_glue_crawlers OWNER TO postgres;

--
-- Name: aws_glue_database_table_indexes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_database_table_indexes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    database_arn text NOT NULL,
    database_table_name text NOT NULL,
    index_name text NOT NULL,
    index_status text,
    keys jsonb,
    backfill_errors jsonb
);


ALTER TABLE public.aws_glue_database_table_indexes OWNER TO postgres;

--
-- Name: aws_glue_database_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_database_tables (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    database_arn text NOT NULL,
    name text NOT NULL,
    catalog_id text,
    create_time timestamp without time zone,
    created_by text,
    database_name text,
    description text,
    is_registered_with_lake_formation boolean,
    last_access_time timestamp without time zone,
    last_analyzed_time timestamp without time zone,
    owner text,
    parameters jsonb,
    partition_keys jsonb,
    retention bigint,
    storage_descriptor jsonb,
    table_type text,
    target_table jsonb,
    update_time timestamp without time zone,
    version_id text,
    view_expanded_text text,
    view_original_text text
);


ALTER TABLE public.aws_glue_database_tables OWNER TO postgres;

--
-- Name: aws_glue_databases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_databases (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    name text,
    catalog_id text,
    create_table_default_permissions jsonb,
    create_time timestamp without time zone,
    description text,
    location_uri text,
    parameters jsonb,
    target_database jsonb
);


ALTER TABLE public.aws_glue_databases OWNER TO postgres;

--
-- Name: aws_glue_datacatalog_encryption_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_datacatalog_encryption_settings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    connection_password_encryption jsonb,
    encryption_at_rest jsonb
);


ALTER TABLE public.aws_glue_datacatalog_encryption_settings OWNER TO postgres;

--
-- Name: aws_glue_dev_endpoints; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_dev_endpoints (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    arguments jsonb,
    availability_zone text,
    created_timestamp timestamp without time zone,
    endpoint_name text,
    extra_jars_s3_path text,
    extra_python_libs_s3_path text,
    failure_reason text,
    glue_version text,
    last_modified_timestamp timestamp without time zone,
    last_update_status text,
    number_of_nodes bigint,
    number_of_workers bigint,
    private_address text,
    public_address text,
    public_key text,
    public_keys text[],
    role_arn text,
    security_configuration text,
    security_group_ids text[],
    status text,
    subnet_id text,
    vpc_id text,
    worker_type text,
    yarn_endpoint_address text,
    zeppelin_remote_spark_interpreter_port bigint
);


ALTER TABLE public.aws_glue_dev_endpoints OWNER TO postgres;

--
-- Name: aws_glue_job_runs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_job_runs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    job_arn text,
    allocated_capacity bigint,
    arguments jsonb,
    attempt bigint,
    completed_on timestamp without time zone,
    dpu_seconds double precision,
    error_message text,
    execution_class text,
    execution_time bigint,
    glue_version text,
    id text,
    job_name text,
    job_run_state text,
    last_modified_on timestamp without time zone,
    log_group_name text,
    max_capacity double precision,
    notification_property jsonb,
    number_of_workers bigint,
    predecessor_runs jsonb,
    previous_run_id text,
    security_configuration text,
    started_on timestamp without time zone,
    timeout bigint,
    trigger_name text,
    worker_type text
);


ALTER TABLE public.aws_glue_job_runs OWNER TO postgres;

--
-- Name: aws_glue_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_jobs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    allocated_capacity bigint,
    code_gen_configuration_nodes jsonb,
    command jsonb,
    connections jsonb,
    created_on timestamp without time zone,
    default_arguments jsonb,
    description text,
    execution_class text,
    execution_property jsonb,
    glue_version text,
    last_modified_on timestamp without time zone,
    log_uri text,
    max_capacity double precision,
    max_retries bigint,
    name text,
    non_overridable_arguments jsonb,
    notification_property jsonb,
    number_of_workers bigint,
    role text,
    security_configuration text,
    source_control_details jsonb,
    timeout bigint,
    worker_type text
);


ALTER TABLE public.aws_glue_jobs OWNER TO postgres;

--
-- Name: aws_glue_ml_transform_task_runs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_ml_transform_task_runs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    ml_transform_arn text,
    completed_on timestamp without time zone,
    error_string text,
    execution_time bigint,
    last_modified_on timestamp without time zone,
    log_group_name text,
    properties jsonb,
    started_on timestamp without time zone,
    status text,
    task_run_id text,
    transform_id text
);


ALTER TABLE public.aws_glue_ml_transform_task_runs OWNER TO postgres;

--
-- Name: aws_glue_ml_transforms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_ml_transforms (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    schema jsonb,
    created_on timestamp without time zone,
    description text,
    evaluation_metrics jsonb,
    glue_version text,
    input_record_tables jsonb,
    label_count bigint,
    last_modified_on timestamp without time zone,
    max_capacity double precision,
    max_retries bigint,
    name text,
    number_of_workers bigint,
    parameters jsonb,
    role text,
    status text,
    timeout bigint,
    transform_encryption jsonb,
    transform_id text,
    worker_type text
);


ALTER TABLE public.aws_glue_ml_transforms OWNER TO postgres;

--
-- Name: aws_glue_registries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_registries (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    created_time text,
    description text,
    registry_arn text,
    registry_name text,
    status text,
    updated_time text
);


ALTER TABLE public.aws_glue_registries OWNER TO postgres;

--
-- Name: aws_glue_registry_schema_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_registry_schema_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    registry_schema_arn text,
    metadata jsonb,
    created_time text,
    data_format text,
    schema_arn text,
    schema_definition text,
    schema_version_id text,
    status text,
    version_number bigint,
    result_metadata jsonb
);


ALTER TABLE public.aws_glue_registry_schema_versions OWNER TO postgres;

--
-- Name: aws_glue_registry_schemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_registry_schemas (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    compatibility text,
    created_time text,
    data_format text,
    description text,
    latest_schema_version bigint,
    next_schema_version bigint,
    registry_arn text,
    registry_name text,
    schema_arn text,
    schema_checkpoint bigint,
    schema_name text,
    schema_status text,
    updated_time text,
    result_metadata jsonb
);


ALTER TABLE public.aws_glue_registry_schemas OWNER TO postgres;

--
-- Name: aws_glue_security_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_security_configurations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    name text NOT NULL,
    created_time_stamp timestamp without time zone,
    encryption_configuration jsonb
);


ALTER TABLE public.aws_glue_security_configurations OWNER TO postgres;

--
-- Name: aws_glue_triggers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_triggers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    actions jsonb,
    description text,
    event_batching_condition jsonb,
    id text,
    name text,
    predicate jsonb,
    schedule text,
    state text,
    type text,
    workflow_name text
);


ALTER TABLE public.aws_glue_triggers OWNER TO postgres;

--
-- Name: aws_glue_workflows; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_glue_workflows (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    blueprint_details jsonb,
    created_on timestamp without time zone,
    default_run_properties jsonb,
    description text,
    graph jsonb,
    last_modified_on timestamp without time zone,
    last_run jsonb,
    max_concurrent_runs bigint,
    name text
);


ALTER TABLE public.aws_glue_workflows OWNER TO postgres;

--
-- Name: aws_guardduty_detector_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_guardduty_detector_members (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    region text,
    detector_arn text,
    account_id text,
    email text,
    master_id text,
    relationship_status text,
    updated_at text,
    administrator_id text,
    detector_id text,
    invited_at text
);


ALTER TABLE public.aws_guardduty_detector_members OWNER TO postgres;

--
-- Name: aws_guardduty_detectors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_guardduty_detectors (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    arn text,
    id text NOT NULL,
    service_role text,
    status text,
    created_at text,
    data_sources jsonb,
    finding_publishing_frequency text,
    tags jsonb,
    updated_at text,
    result_metadata jsonb
);


ALTER TABLE public.aws_guardduty_detectors OWNER TO postgres;

--
-- Name: aws_iam_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_accounts (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    users bigint,
    users_quota bigint,
    groups bigint,
    groups_quota bigint,
    server_certificates bigint,
    server_certificates_quota bigint,
    user_policy_size_quota bigint,
    group_policy_size_quota bigint,
    groups_per_user_quota bigint,
    signing_certificates_per_user_quota bigint,
    access_keys_per_user_quota bigint,
    mfa_devices bigint,
    mfa_devices_in_use bigint,
    account_mfa_enabled boolean,
    account_access_keys_present boolean,
    account_signing_certificates_present boolean,
    attached_policies_per_group_quota bigint,
    attached_policies_per_role_quota bigint,
    attached_policies_per_user_quota bigint,
    policies bigint,
    policies_quota bigint,
    policy_size_quota bigint,
    policy_versions_in_use bigint,
    policy_versions_in_use_quota bigint,
    versions_per_policy_quota bigint,
    global_endpoint_token_version bigint,
    aliases text[]
);


ALTER TABLE public.aws_iam_accounts OWNER TO postgres;

--
-- Name: aws_iam_credential_reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_credential_reports (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    arn text NOT NULL,
    user_creation_time timestamp without time zone NOT NULL,
    password_last_changed timestamp without time zone,
    password_next_rotation timestamp without time zone,
    access_key_1_last_rotated timestamp without time zone,
    access_key_2_last_rotated timestamp without time zone,
    cert_1_last_rotated timestamp without time zone,
    cert_2_last_rotated timestamp without time zone,
    access_key_1_last_used_date timestamp without time zone,
    access_key_2_last_used_date timestamp without time zone,
    password_last_used timestamp without time zone,
    password_enabled text,
    "user" text,
    password_status text,
    mfa_active boolean,
    access_key1_active boolean,
    access_key2_active boolean,
    cert1_active boolean,
    cert2_active boolean,
    access_key1_last_used_region text,
    access_key1_last_used_service text,
    access_key2_last_used_region text,
    access_key2_last_used_service text
);


ALTER TABLE public.aws_iam_credential_reports OWNER TO postgres;

--
-- Name: aws_iam_group_last_accessed_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_group_last_accessed_details (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    job_id text,
    service_name text,
    service_namespace text NOT NULL,
    last_authenticated timestamp without time zone,
    last_authenticated_entity text,
    last_authenticated_region text,
    total_authenticated_entities bigint,
    tracked_actions_last_accessed jsonb
);


ALTER TABLE public.aws_iam_group_last_accessed_details OWNER TO postgres;

--
-- Name: aws_iam_group_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_group_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    group_arn text,
    group_id text,
    policy_document jsonb,
    group_name text,
    policy_name text,
    result_metadata jsonb
);


ALTER TABLE public.aws_iam_group_policies OWNER TO postgres;

--
-- Name: aws_iam_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    policies jsonb,
    id text NOT NULL,
    arn text,
    create_date timestamp without time zone,
    group_id text,
    group_name text,
    path text
);


ALTER TABLE public.aws_iam_groups OWNER TO postgres;

--
-- Name: aws_iam_instance_profiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_instance_profiles (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    id text NOT NULL,
    tags jsonb,
    arn text,
    create_date timestamp without time zone,
    instance_profile_id text,
    instance_profile_name text,
    path text,
    roles jsonb
);


ALTER TABLE public.aws_iam_instance_profiles OWNER TO postgres;

--
-- Name: aws_iam_openid_connect_identity_providers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_openid_connect_identity_providers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    client_id_list text[],
    create_date timestamp without time zone,
    thumbprint_list text[],
    url text,
    result_metadata jsonb
);


ALTER TABLE public.aws_iam_openid_connect_identity_providers OWNER TO postgres;

--
-- Name: aws_iam_password_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_password_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    allow_users_to_change_password boolean,
    expire_passwords boolean,
    hard_expiry boolean,
    max_password_age bigint,
    minimum_password_length bigint,
    password_reuse_prevention bigint,
    require_lowercase_characters boolean,
    require_numbers boolean,
    require_symbols boolean,
    require_uppercase_characters boolean,
    policy_exists boolean
);


ALTER TABLE public.aws_iam_password_policies OWNER TO postgres;

--
-- Name: aws_iam_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    id text NOT NULL,
    tags jsonb,
    policy_version_list jsonb,
    arn text,
    attachment_count bigint,
    create_date timestamp without time zone,
    default_version_id text,
    description text,
    is_attachable boolean,
    path text,
    permissions_boundary_usage_count bigint,
    policy_id text,
    policy_name text,
    update_date timestamp without time zone
);


ALTER TABLE public.aws_iam_policies OWNER TO postgres;

--
-- Name: aws_iam_policy_last_accessed_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_policy_last_accessed_details (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    arn text NOT NULL,
    job_id text,
    service_name text,
    service_namespace text NOT NULL,
    last_authenticated timestamp without time zone,
    last_authenticated_entity text,
    last_authenticated_region text,
    total_authenticated_entities bigint,
    tracked_actions_last_accessed jsonb
);


ALTER TABLE public.aws_iam_policy_last_accessed_details OWNER TO postgres;

--
-- Name: aws_iam_role_last_accessed_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_role_last_accessed_details (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    job_id text,
    service_name text,
    service_namespace text NOT NULL,
    last_authenticated timestamp without time zone,
    last_authenticated_entity text,
    last_authenticated_region text,
    total_authenticated_entities bigint,
    tracked_actions_last_accessed jsonb
);


ALTER TABLE public.aws_iam_role_last_accessed_details OWNER TO postgres;

--
-- Name: aws_iam_role_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_role_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    role_arn text NOT NULL,
    policy_name text NOT NULL,
    policy_document jsonb,
    role_name text,
    result_metadata jsonb
);


ALTER TABLE public.aws_iam_role_policies OWNER TO postgres;

--
-- Name: aws_iam_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_roles (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    policies jsonb,
    id text NOT NULL,
    assume_role_policy_document jsonb,
    tags jsonb,
    arn text,
    create_date timestamp without time zone,
    path text,
    role_id text,
    role_name text,
    description text,
    max_session_duration bigint,
    permissions_boundary jsonb,
    role_last_used jsonb
);


ALTER TABLE public.aws_iam_roles OWNER TO postgres;

--
-- Name: aws_iam_saml_identity_providers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_saml_identity_providers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    create_date timestamp without time zone,
    saml_metadata_document text,
    tags jsonb,
    valid_until timestamp without time zone
);


ALTER TABLE public.aws_iam_saml_identity_providers OWNER TO postgres;

--
-- Name: aws_iam_server_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_server_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    id text NOT NULL,
    arn text,
    path text,
    server_certificate_id text,
    server_certificate_name text,
    expiration timestamp without time zone,
    upload_date timestamp without time zone
);


ALTER TABLE public.aws_iam_server_certificates OWNER TO postgres;

--
-- Name: aws_iam_signing_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_signing_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    user_arn text NOT NULL,
    user_id text,
    certificate_body text,
    certificate_id text NOT NULL,
    status text,
    user_name text,
    upload_date timestamp without time zone
);


ALTER TABLE public.aws_iam_signing_certificates OWNER TO postgres;

--
-- Name: aws_iam_ssh_public_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_ssh_public_keys (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    user_arn text,
    user_id text,
    ssh_public_key_id text NOT NULL,
    status text,
    upload_date timestamp without time zone,
    user_name text
);


ALTER TABLE public.aws_iam_ssh_public_keys OWNER TO postgres;

--
-- Name: aws_iam_user_access_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_user_access_keys (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    user_arn text NOT NULL,
    access_key_id text NOT NULL,
    user_id text,
    last_used timestamp without time zone,
    last_used_service_name text,
    create_date timestamp without time zone,
    status text,
    user_name text,
    last_rotated timestamp without time zone
);


ALTER TABLE public.aws_iam_user_access_keys OWNER TO postgres;

--
-- Name: aws_iam_user_attached_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_user_attached_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    user_arn text NOT NULL,
    policy_name text NOT NULL,
    user_id text,
    policy_arn text
);


ALTER TABLE public.aws_iam_user_attached_policies OWNER TO postgres;

--
-- Name: aws_iam_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_user_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    user_arn text,
    user_id text NOT NULL,
    arn text NOT NULL,
    create_date timestamp without time zone,
    group_id text,
    group_name text,
    path text
);


ALTER TABLE public.aws_iam_user_groups OWNER TO postgres;

--
-- Name: aws_iam_user_last_accessed_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_user_last_accessed_details (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    job_id text,
    service_name text,
    service_namespace text NOT NULL,
    last_authenticated timestamp without time zone,
    last_authenticated_entity text,
    last_authenticated_region text,
    total_authenticated_entities bigint,
    tracked_actions_last_accessed jsonb
);


ALTER TABLE public.aws_iam_user_last_accessed_details OWNER TO postgres;

--
-- Name: aws_iam_user_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_user_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    user_arn text,
    user_id text,
    policy_document jsonb,
    policy_name text,
    user_name text,
    result_metadata jsonb
);


ALTER TABLE public.aws_iam_user_policies OWNER TO postgres;

--
-- Name: aws_iam_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_users (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    arn text,
    id text NOT NULL,
    account_id text NOT NULL,
    tags jsonb,
    create_date timestamp without time zone,
    path text,
    user_id text,
    user_name text,
    password_last_used timestamp without time zone,
    permissions_boundary jsonb
);


ALTER TABLE public.aws_iam_users OWNER TO postgres;

--
-- Name: aws_iam_virtual_mfa_devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iam_virtual_mfa_devices (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    serial_number text NOT NULL,
    tags jsonb,
    base32_string_seed bytea,
    enable_date timestamp without time zone,
    qr_code_png bytea,
    "user" jsonb
);


ALTER TABLE public.aws_iam_virtual_mfa_devices OWNER TO postgres;

--
-- Name: aws_identitystore_group_memberships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_identitystore_group_memberships (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    member_id text,
    identity_store_id text,
    group_id text,
    membership_id text
);


ALTER TABLE public.aws_identitystore_group_memberships OWNER TO postgres;

--
-- Name: aws_identitystore_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_identitystore_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    group_id text,
    identity_store_id text,
    description text,
    display_name text,
    external_ids jsonb
);


ALTER TABLE public.aws_identitystore_groups OWNER TO postgres;

--
-- Name: aws_identitystore_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_identitystore_users (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    identity_store_id text,
    user_id text,
    addresses jsonb,
    display_name text,
    emails jsonb,
    external_ids jsonb,
    locale text,
    name jsonb,
    nick_name text,
    phone_numbers jsonb,
    preferred_language text,
    profile_url text,
    timezone text,
    title text,
    user_name text,
    user_type text
);


ALTER TABLE public.aws_identitystore_users OWNER TO postgres;

--
-- Name: aws_inspector2_findings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_inspector2_findings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    aws_account_id text,
    description text,
    finding_arn text,
    first_observed_at timestamp without time zone,
    last_observed_at timestamp without time zone,
    remediation jsonb,
    resources jsonb,
    severity text,
    status text,
    type text,
    exploit_available text,
    exploitability_details jsonb,
    fix_available text,
    inspector_score double precision,
    inspector_score_details jsonb,
    network_reachability_details jsonb,
    package_vulnerability_details jsonb,
    title text,
    updated_at timestamp without time zone
);


ALTER TABLE public.aws_inspector2_findings OWNER TO postgres;

--
-- Name: aws_inspector_findings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_inspector_findings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    attributes jsonb,
    user_attributes jsonb,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    asset_attributes jsonb,
    asset_type text,
    confidence bigint,
    description text,
    id text,
    indicator_of_compromise boolean,
    numeric_severity double precision,
    recommendation text,
    schema_version bigint,
    service text,
    service_attributes jsonb,
    severity text,
    title text
);


ALTER TABLE public.aws_inspector_findings OWNER TO postgres;

--
-- Name: aws_iot_billing_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_billing_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    things_in_group text[],
    tags jsonb,
    arn text NOT NULL,
    billing_group_arn text,
    billing_group_id text,
    billing_group_metadata jsonb,
    billing_group_name text,
    billing_group_properties jsonb,
    version bigint,
    result_metadata jsonb
);


ALTER TABLE public.aws_iot_billing_groups OWNER TO postgres;

--
-- Name: aws_iot_ca_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_ca_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    certificates text[],
    arn text NOT NULL,
    auto_registration_status text,
    certificate_arn text,
    certificate_id text,
    certificate_mode text,
    certificate_pem text,
    creation_date timestamp without time zone,
    customer_version bigint,
    generation_id text,
    last_modified_date timestamp without time zone,
    owned_by text,
    status text,
    validity jsonb
);


ALTER TABLE public.aws_iot_ca_certificates OWNER TO postgres;

--
-- Name: aws_iot_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    policies text[],
    arn text NOT NULL,
    ca_certificate_id text,
    certificate_arn text,
    certificate_id text,
    certificate_mode text,
    certificate_pem text,
    creation_date timestamp without time zone,
    customer_version bigint,
    generation_id text,
    last_modified_date timestamp without time zone,
    owned_by text,
    previous_owned_by text,
    status text,
    transfer_data jsonb,
    validity jsonb
);


ALTER TABLE public.aws_iot_certificates OWNER TO postgres;

--
-- Name: aws_iot_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_jobs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    abort_config jsonb,
    comment text,
    completed_at timestamp without time zone,
    created_at timestamp without time zone,
    description text,
    document_parameters jsonb,
    force_canceled boolean,
    is_concurrent boolean,
    job_arn text,
    job_executions_retry_config jsonb,
    job_executions_rollout_config jsonb,
    job_id text,
    job_process_details jsonb,
    job_template_arn text,
    last_updated_at timestamp without time zone,
    namespace_id text,
    presigned_url_config jsonb,
    reason_code text,
    scheduling_config jsonb,
    status text,
    target_selection text,
    targets text[],
    timeout_config jsonb
);


ALTER TABLE public.aws_iot_jobs OWNER TO postgres;

--
-- Name: aws_iot_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    policy_arn text,
    policy_name text
);


ALTER TABLE public.aws_iot_policies OWNER TO postgres;

--
-- Name: aws_iot_security_profiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_security_profiles (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    targets text[],
    tags jsonb,
    arn text NOT NULL,
    additional_metrics_to_retain text[],
    additional_metrics_to_retain_v2 jsonb,
    alert_targets jsonb,
    behaviors jsonb,
    creation_date timestamp without time zone,
    last_modified_date timestamp without time zone,
    security_profile_arn text,
    security_profile_description text,
    security_profile_name text,
    version bigint,
    result_metadata jsonb
);


ALTER TABLE public.aws_iot_security_profiles OWNER TO postgres;

--
-- Name: aws_iot_streams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_streams (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    created_at timestamp without time zone,
    description text,
    files jsonb,
    last_updated_at timestamp without time zone,
    role_arn text,
    stream_arn text,
    stream_id text,
    stream_version bigint
);


ALTER TABLE public.aws_iot_streams OWNER TO postgres;

--
-- Name: aws_iot_thing_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_thing_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    things_in_group text[],
    policies text[],
    tags jsonb,
    arn text NOT NULL,
    index_name text,
    query_string text,
    query_version text,
    status text,
    thing_group_arn text,
    thing_group_id text,
    thing_group_metadata jsonb,
    thing_group_name text,
    thing_group_properties jsonb,
    version bigint,
    result_metadata jsonb
);


ALTER TABLE public.aws_iot_thing_groups OWNER TO postgres;

--
-- Name: aws_iot_thing_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_thing_types (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    thing_type_arn text,
    thing_type_metadata jsonb,
    thing_type_name text,
    thing_type_properties jsonb
);


ALTER TABLE public.aws_iot_thing_types OWNER TO postgres;

--
-- Name: aws_iot_things; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_things (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    principals text[],
    arn text NOT NULL,
    attributes jsonb,
    thing_arn text,
    thing_name text,
    thing_type_name text,
    version bigint
);


ALTER TABLE public.aws_iot_things OWNER TO postgres;

--
-- Name: aws_iot_topic_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_iot_topic_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    rule jsonb,
    rule_arn text,
    result_metadata jsonb
);


ALTER TABLE public.aws_iot_topic_rules OWNER TO postgres;

--
-- Name: aws_kafka_cluster_operations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_kafka_cluster_operations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    cluster_arn text,
    tags jsonb,
    client_request_id text,
    creation_time timestamp without time zone,
    end_time timestamp without time zone,
    error_info jsonb,
    operation_arn text,
    operation_state text,
    operation_steps jsonb,
    operation_type text,
    source_cluster_info jsonb,
    target_cluster_info jsonb
);


ALTER TABLE public.aws_kafka_cluster_operations OWNER TO postgres;

--
-- Name: aws_kafka_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_kafka_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    active_operation_arn text,
    cluster_arn text,
    cluster_name text,
    cluster_type text,
    creation_time timestamp without time zone,
    current_version text,
    provisioned jsonb,
    serverless jsonb,
    state text,
    state_info jsonb,
    tags jsonb
);


ALTER TABLE public.aws_kafka_clusters OWNER TO postgres;

--
-- Name: aws_kafka_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_kafka_configurations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    description text,
    kafka_versions text[],
    latest_revision jsonb,
    name text,
    state text
);


ALTER TABLE public.aws_kafka_configurations OWNER TO postgres;

--
-- Name: aws_kafka_nodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_kafka_nodes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    cluster_arn text,
    added_to_cluster_time text,
    broker_node_info jsonb,
    instance_type text,
    node_arn text,
    node_type text,
    zookeeper_node_info jsonb
);


ALTER TABLE public.aws_kafka_nodes OWNER TO postgres;

--
-- Name: aws_kinesis_streams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_kinesis_streams (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    enhanced_monitoring jsonb,
    open_shard_count bigint,
    retention_period_hours bigint,
    stream_arn text,
    stream_creation_timestamp timestamp without time zone,
    stream_name text,
    stream_status text,
    consumer_count bigint,
    encryption_type text,
    key_id text,
    stream_mode_details jsonb
);


ALTER TABLE public.aws_kinesis_streams OWNER TO postgres;

--
-- Name: aws_kms_aliases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_kms_aliases (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    alias_arn text,
    alias_name text,
    creation_date timestamp without time zone,
    last_updated_date timestamp without time zone,
    target_key_id text
);


ALTER TABLE public.aws_kms_aliases OWNER TO postgres;

--
-- Name: aws_kms_key_grants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_kms_key_grants (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    key_arn text NOT NULL,
    grant_id text NOT NULL,
    constraints jsonb,
    creation_date timestamp without time zone,
    grantee_principal text,
    issuing_account text,
    key_id text,
    name text,
    operations text[],
    retiring_principal text
);


ALTER TABLE public.aws_kms_key_grants OWNER TO postgres;

--
-- Name: aws_kms_key_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_kms_key_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    key_arn text NOT NULL,
    name text NOT NULL,
    policy jsonb
);


ALTER TABLE public.aws_kms_key_policies OWNER TO postgres;

--
-- Name: aws_kms_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_kms_keys (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    rotation_enabled boolean,
    tags jsonb,
    arn text NOT NULL,
    replica_keys jsonb,
    key_id text,
    aws_account_id text,
    cloud_hsm_cluster_id text,
    creation_date timestamp without time zone,
    custom_key_store_id text,
    customer_master_key_spec text,
    deletion_date timestamp without time zone,
    description text,
    enabled boolean,
    encryption_algorithms text[],
    expiration_model text,
    key_manager text,
    key_spec text,
    key_state text,
    key_usage text,
    mac_algorithms text[],
    multi_region boolean,
    multi_region_configuration jsonb,
    origin text,
    pending_deletion_window_in_days bigint,
    signing_algorithms text[],
    valid_to timestamp without time zone,
    xks_key_configuration jsonb
);


ALTER TABLE public.aws_kms_keys OWNER TO postgres;

--
-- Name: aws_lambda_function_aliases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_function_aliases (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    function_arn text,
    arn text NOT NULL,
    alias_arn text,
    description text,
    function_version text,
    name text,
    revision_id text,
    routing_config jsonb,
    url_config jsonb
);


ALTER TABLE public.aws_lambda_function_aliases OWNER TO postgres;

--
-- Name: aws_lambda_function_concurrency_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_function_concurrency_configs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    function_arn text,
    allocated_provisioned_concurrent_executions bigint,
    available_provisioned_concurrent_executions bigint,
    last_modified text,
    requested_provisioned_concurrent_executions bigint,
    status text,
    status_reason text
);


ALTER TABLE public.aws_lambda_function_concurrency_configs OWNER TO postgres;

--
-- Name: aws_lambda_function_event_invoke_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_function_event_invoke_configs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    function_arn text,
    destination_config jsonb,
    last_modified timestamp without time zone,
    maximum_event_age_in_seconds bigint,
    maximum_retry_attempts bigint
);


ALTER TABLE public.aws_lambda_function_event_invoke_configs OWNER TO postgres;

--
-- Name: aws_lambda_function_event_source_mappings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_function_event_source_mappings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    function_arn text,
    amazon_managed_kafka_event_source_config jsonb,
    batch_size bigint,
    bisect_batch_on_function_error boolean,
    destination_config jsonb,
    event_source_arn text,
    filter_criteria jsonb,
    function_response_types text[],
    last_modified timestamp without time zone,
    last_processing_result text,
    maximum_batching_window_in_seconds bigint,
    maximum_record_age_in_seconds bigint,
    maximum_retry_attempts bigint,
    parallelization_factor bigint,
    queues text[],
    scaling_config jsonb,
    self_managed_event_source jsonb,
    self_managed_kafka_event_source_config jsonb,
    source_access_configurations jsonb,
    starting_position text,
    starting_position_timestamp timestamp without time zone,
    state text,
    state_transition_reason text,
    topics text[],
    tumbling_window_in_seconds bigint,
    uuid text
);


ALTER TABLE public.aws_lambda_function_event_source_mappings OWNER TO postgres;

--
-- Name: aws_lambda_function_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_function_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    function_arn text,
    architectures text[],
    code_sha256 text,
    code_size bigint,
    dead_letter_config jsonb,
    description text,
    environment jsonb,
    ephemeral_storage jsonb,
    file_system_configs jsonb,
    function_name text,
    handler text,
    image_config_response jsonb,
    kms_key_arn text,
    last_modified text,
    last_update_status text,
    last_update_status_reason text,
    last_update_status_reason_code text,
    layers jsonb,
    master_arn text,
    memory_size bigint,
    package_type text,
    revision_id text,
    role text,
    runtime text,
    runtime_version_config jsonb,
    signing_job_arn text,
    signing_profile_version_arn text,
    snap_start jsonb,
    state text,
    state_reason text,
    state_reason_code text,
    timeout bigint,
    tracing_config jsonb,
    version text,
    vpc_config jsonb
);


ALTER TABLE public.aws_lambda_function_versions OWNER TO postgres;

--
-- Name: aws_lambda_functions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_functions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    policy_revision_id text,
    policy_document jsonb,
    code_signing_config jsonb,
    code_repository_type text,
    update_runtime_on text,
    runtime_version_arn text,
    code jsonb,
    concurrency jsonb,
    configuration jsonb,
    tags jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_lambda_functions OWNER TO postgres;

--
-- Name: aws_lambda_layer_version_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_layer_version_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    layer_version_arn text,
    layer_version bigint,
    policy text,
    revision_id text,
    result_metadata jsonb
);


ALTER TABLE public.aws_lambda_layer_version_policies OWNER TO postgres;

--
-- Name: aws_lambda_layer_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_layer_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    layer_arn text,
    compatible_architectures text[],
    compatible_runtimes text[],
    created_date text,
    description text,
    layer_version_arn text,
    license_info text,
    version bigint
);


ALTER TABLE public.aws_lambda_layer_versions OWNER TO postgres;

--
-- Name: aws_lambda_layers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_layers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    latest_matching_version jsonb,
    layer_arn text,
    layer_name text
);


ALTER TABLE public.aws_lambda_layers OWNER TO postgres;

--
-- Name: aws_lambda_runtimes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lambda_runtimes (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    name text NOT NULL
);


ALTER TABLE public.aws_lambda_runtimes OWNER TO postgres;

--
-- Name: aws_lightsail_alarms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_alarms (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    comparison_operator text,
    contact_protocols text[],
    created_at timestamp without time zone,
    datapoints_to_alarm bigint,
    evaluation_periods bigint,
    location jsonb,
    metric_name text,
    monitored_resource_info jsonb,
    name text,
    notification_enabled boolean,
    notification_triggers text[],
    period bigint,
    resource_type text,
    state text,
    statistic text,
    support_code text,
    threshold double precision,
    treat_missing_data text,
    unit text
);


ALTER TABLE public.aws_lightsail_alarms OWNER TO postgres;

--
-- Name: aws_lightsail_bucket_access_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_bucket_access_keys (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    bucket_arn text,
    access_key_id text,
    created_at timestamp without time zone,
    last_used jsonb,
    secret_access_key text,
    status text
);


ALTER TABLE public.aws_lightsail_bucket_access_keys OWNER TO postgres;

--
-- Name: aws_lightsail_buckets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_buckets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    able_to_update_bundle boolean,
    tags jsonb,
    access_log_config jsonb,
    access_rules jsonb,
    arn text NOT NULL,
    bundle_id text,
    created_at timestamp without time zone,
    location jsonb,
    name text,
    object_versioning text,
    readonly_access_accounts text[],
    resource_type text,
    resources_receiving_access jsonb,
    state jsonb,
    support_code text,
    url text
);


ALTER TABLE public.aws_lightsail_buckets OWNER TO postgres;

--
-- Name: aws_lightsail_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    created_at timestamp without time zone,
    domain_name text,
    domain_validation_records jsonb,
    eligible_to_renew text,
    in_use_resource_count bigint,
    issued_at timestamp without time zone,
    issuer_ca text,
    key_algorithm text,
    name text,
    not_after timestamp without time zone,
    not_before timestamp without time zone,
    renewal_summary jsonb,
    request_failure_reason text,
    revocation_reason text,
    revoked_at timestamp without time zone,
    serial_number text,
    status text,
    subject_alternative_names text[],
    support_code text
);


ALTER TABLE public.aws_lightsail_certificates OWNER TO postgres;

--
-- Name: aws_lightsail_container_service_deployments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_container_service_deployments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    container_service_arn text,
    containers jsonb,
    created_at timestamp without time zone,
    public_endpoint jsonb,
    state text,
    version bigint
);


ALTER TABLE public.aws_lightsail_container_service_deployments OWNER TO postgres;

--
-- Name: aws_lightsail_container_service_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_container_service_images (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    container_service_arn text,
    created_at timestamp without time zone,
    digest text,
    image text
);


ALTER TABLE public.aws_lightsail_container_service_images OWNER TO postgres;

--
-- Name: aws_lightsail_container_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_container_services (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    container_service_name text,
    created_at timestamp without time zone,
    current_deployment jsonb,
    is_disabled boolean,
    location jsonb,
    next_deployment jsonb,
    power text,
    power_id text,
    principal_arn text,
    private_domain_name text,
    private_registry_access jsonb,
    public_domain_names jsonb,
    resource_type text,
    scale bigint,
    state text,
    state_detail jsonb,
    url text
);


ALTER TABLE public.aws_lightsail_container_services OWNER TO postgres;

--
-- Name: aws_lightsail_database_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_database_events (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    database_arn text,
    created_at timestamp without time zone,
    event_categories text[],
    message text,
    resource text
);


ALTER TABLE public.aws_lightsail_database_events OWNER TO postgres;

--
-- Name: aws_lightsail_database_log_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_database_log_events (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    database_arn text,
    created_at timestamp without time zone,
    message text,
    log_stream_name text
);


ALTER TABLE public.aws_lightsail_database_log_events OWNER TO postgres;

--
-- Name: aws_lightsail_database_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_database_parameters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    database_arn text,
    allowed_values text,
    apply_method text,
    apply_type text,
    data_type text,
    description text,
    is_modifiable boolean,
    parameter_name text,
    parameter_value text
);


ALTER TABLE public.aws_lightsail_database_parameters OWNER TO postgres;

--
-- Name: aws_lightsail_database_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_database_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_at timestamp without time zone,
    engine text,
    engine_version text,
    from_relational_database_arn text,
    from_relational_database_blueprint_id text,
    from_relational_database_bundle_id text,
    from_relational_database_name text,
    location jsonb,
    name text,
    resource_type text,
    size_in_gb bigint,
    state text,
    support_code text
);


ALTER TABLE public.aws_lightsail_database_snapshots OWNER TO postgres;

--
-- Name: aws_lightsail_databases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_databases (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    backup_retention_enabled boolean,
    ca_certificate_identifier text,
    created_at timestamp without time zone,
    engine text,
    engine_version text,
    hardware jsonb,
    latest_restorable_time timestamp without time zone,
    location jsonb,
    master_database_name text,
    master_endpoint jsonb,
    master_username text,
    name text,
    parameter_apply_status text,
    pending_maintenance_actions jsonb,
    pending_modified_values jsonb,
    preferred_backup_window text,
    preferred_maintenance_window text,
    publicly_accessible boolean,
    relational_database_blueprint_id text,
    relational_database_bundle_id text,
    resource_type text,
    secondary_availability_zone text,
    state text,
    support_code text
);


ALTER TABLE public.aws_lightsail_databases OWNER TO postgres;

--
-- Name: aws_lightsail_disk_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_disk_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    disk_arn text,
    tags jsonb,
    arn text NOT NULL,
    created_at timestamp without time zone,
    from_disk_arn text,
    from_disk_name text,
    from_instance_arn text,
    from_instance_name text,
    is_from_auto_snapshot boolean,
    location jsonb,
    name text,
    progress text,
    resource_type text,
    size_in_gb bigint,
    state text,
    support_code text
);


ALTER TABLE public.aws_lightsail_disk_snapshots OWNER TO postgres;

--
-- Name: aws_lightsail_disks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_disks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    add_ons jsonb,
    attached_to text,
    attachment_state text,
    created_at timestamp without time zone,
    gb_in_use bigint,
    iops bigint,
    is_attached boolean,
    is_system_disk boolean,
    location jsonb,
    name text,
    path text,
    resource_type text,
    size_in_gb bigint,
    state text,
    support_code text
);


ALTER TABLE public.aws_lightsail_disks OWNER TO postgres;

--
-- Name: aws_lightsail_distributions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_distributions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    able_to_update_bundle boolean,
    alternative_domain_names text[],
    bundle_id text,
    cache_behavior_settings jsonb,
    cache_behaviors jsonb,
    certificate_name text,
    created_at timestamp without time zone,
    default_cache_behavior jsonb,
    domain_name text,
    ip_address_type text,
    is_enabled boolean,
    location jsonb,
    name text,
    origin jsonb,
    origin_public_dns text,
    resource_type text,
    status text,
    support_code text,
    latest_cache_reset jsonb
);


ALTER TABLE public.aws_lightsail_distributions OWNER TO postgres;

--
-- Name: aws_lightsail_instance_port_states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_instance_port_states (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    instance_arn text,
    cidr_list_aliases text[],
    cidrs text[],
    from_port bigint,
    ipv6_cidrs text[],
    protocol text,
    state text,
    to_port bigint
);


ALTER TABLE public.aws_lightsail_instance_port_states OWNER TO postgres;

--
-- Name: aws_lightsail_instance_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_instance_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_at timestamp without time zone,
    from_attached_disks jsonb,
    from_blueprint_id text,
    from_bundle_id text,
    from_instance_arn text,
    from_instance_name text,
    is_from_auto_snapshot boolean,
    location jsonb,
    name text,
    progress text,
    resource_type text,
    size_in_gb bigint,
    state text,
    support_code text
);


ALTER TABLE public.aws_lightsail_instance_snapshots OWNER TO postgres;

--
-- Name: aws_lightsail_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    access_details jsonb,
    arn text NOT NULL,
    tags jsonb,
    add_ons jsonb,
    blueprint_id text,
    blueprint_name text,
    bundle_id text,
    created_at timestamp without time zone,
    hardware jsonb,
    ip_address_type text,
    ipv6_addresses text[],
    is_static_ip boolean,
    location jsonb,
    metadata_options jsonb,
    name text,
    networking jsonb,
    private_ip_address text,
    public_ip_address text,
    resource_type text,
    ssh_key_name text,
    state jsonb,
    support_code text,
    username text
);


ALTER TABLE public.aws_lightsail_instances OWNER TO postgres;

--
-- Name: aws_lightsail_load_balancer_tls_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_load_balancer_tls_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    load_balancer_arn text,
    tags jsonb,
    arn text NOT NULL,
    created_at timestamp without time zone,
    domain_name text,
    domain_validation_records jsonb,
    failure_reason text,
    is_attached boolean,
    issued_at timestamp without time zone,
    issuer text,
    key_algorithm text,
    load_balancer_name text,
    location jsonb,
    name text,
    not_after timestamp without time zone,
    not_before timestamp without time zone,
    renewal_summary jsonb,
    resource_type text,
    revocation_reason text,
    revoked_at timestamp without time zone,
    serial text,
    signature_algorithm text,
    status text,
    subject text,
    subject_alternative_names text[],
    support_code text
);


ALTER TABLE public.aws_lightsail_load_balancer_tls_certificates OWNER TO postgres;

--
-- Name: aws_lightsail_load_balancers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_load_balancers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    configuration_options jsonb,
    created_at timestamp without time zone,
    dns_name text,
    health_check_path text,
    https_redirection_enabled boolean,
    instance_health_summary jsonb,
    instance_port bigint,
    ip_address_type text,
    location jsonb,
    name text,
    protocol text,
    public_ports bigint[],
    resource_type text,
    state text,
    support_code text,
    tls_certificate_summaries jsonb,
    tls_policy_name text
);


ALTER TABLE public.aws_lightsail_load_balancers OWNER TO postgres;

--
-- Name: aws_lightsail_static_ips; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_lightsail_static_ips (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    attached_to text,
    created_at timestamp without time zone,
    ip_address text,
    is_attached boolean,
    location jsonb,
    name text,
    resource_type text,
    support_code text
);


ALTER TABLE public.aws_lightsail_static_ips OWNER TO postgres;

--
-- Name: aws_mq_broker_configuration_revisions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_mq_broker_configuration_revisions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    broker_configuration_arn text,
    data jsonb,
    configuration_id text,
    created timestamp without time zone,
    description text,
    result_metadata jsonb
);


ALTER TABLE public.aws_mq_broker_configuration_revisions OWNER TO postgres;

--
-- Name: aws_mq_broker_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_mq_broker_configurations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    broker_arn text,
    arn text NOT NULL,
    authentication_strategy text,
    created timestamp without time zone,
    description text,
    engine_type text,
    engine_version text,
    id text,
    latest_revision jsonb,
    name text,
    tags jsonb
);


ALTER TABLE public.aws_mq_broker_configurations OWNER TO postgres;

--
-- Name: aws_mq_broker_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_mq_broker_users (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    broker_arn text,
    broker_id text,
    console_access boolean,
    groups text[],
    pending jsonb,
    username text,
    result_metadata jsonb
);


ALTER TABLE public.aws_mq_broker_users OWNER TO postgres;

--
-- Name: aws_mq_brokers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_mq_brokers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    actions_required jsonb,
    authentication_strategy text,
    auto_minor_version_upgrade boolean,
    broker_arn text,
    broker_id text,
    broker_instances jsonb,
    broker_name text,
    broker_state text,
    configurations jsonb,
    created timestamp without time zone,
    deployment_mode text,
    encryption_options jsonb,
    engine_type text,
    engine_version text,
    host_instance_type text,
    ldap_server_metadata jsonb,
    logs jsonb,
    maintenance_window_start_time jsonb,
    pending_authentication_strategy text,
    pending_engine_version text,
    pending_host_instance_type text,
    pending_ldap_server_metadata jsonb,
    pending_security_groups text[],
    publicly_accessible boolean,
    security_groups text[],
    storage_type text,
    subnet_ids text[],
    tags jsonb,
    users jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_mq_brokers OWNER TO postgres;

--
-- Name: aws_mwaa_environments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_mwaa_environments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    airflow_configuration_options jsonb,
    airflow_version text,
    created_at timestamp without time zone,
    dag_s3_path text,
    environment_class text,
    execution_role_arn text,
    kms_key text,
    last_update jsonb,
    logging_configuration jsonb,
    max_workers bigint,
    min_workers bigint,
    name text,
    network_configuration jsonb,
    plugins_s3_object_version text,
    plugins_s3_path text,
    requirements_s3_object_version text,
    requirements_s3_path text,
    schedulers bigint,
    service_role_arn text,
    source_bucket_arn text,
    status text,
    tags jsonb,
    webserver_access_mode text,
    webserver_url text,
    weekly_maintenance_window_start text
);


ALTER TABLE public.aws_mwaa_environments OWNER TO postgres;

--
-- Name: aws_neptune_cluster_parameter_group_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_cluster_parameter_group_parameters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cluster_parameter_group_arn text,
    allowed_values text,
    apply_method text,
    apply_type text,
    data_type text,
    description text,
    is_modifiable boolean,
    minimum_engine_version text,
    parameter_name text,
    parameter_value text,
    source text
);


ALTER TABLE public.aws_neptune_cluster_parameter_group_parameters OWNER TO postgres;

--
-- Name: aws_neptune_cluster_parameter_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_cluster_parameter_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    db_cluster_parameter_group_arn text,
    db_cluster_parameter_group_name text,
    db_parameter_group_family text,
    description text
);


ALTER TABLE public.aws_neptune_cluster_parameter_groups OWNER TO postgres;

--
-- Name: aws_neptune_cluster_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_cluster_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    attributes jsonb,
    tags jsonb,
    allocated_storage bigint,
    availability_zones text[],
    cluster_create_time timestamp without time zone,
    db_cluster_identifier text,
    db_cluster_snapshot_arn text,
    db_cluster_snapshot_identifier text,
    engine text,
    engine_version text,
    iam_database_authentication_enabled boolean,
    kms_key_id text,
    license_model text,
    master_username text,
    percent_progress bigint,
    port bigint,
    snapshot_create_time timestamp without time zone,
    snapshot_type text,
    source_db_cluster_snapshot_arn text,
    status text,
    storage_encrypted boolean,
    vpc_id text
);


ALTER TABLE public.aws_neptune_cluster_snapshots OWNER TO postgres;

--
-- Name: aws_neptune_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    allocated_storage bigint,
    associated_roles jsonb,
    automatic_restart_time timestamp without time zone,
    availability_zones text[],
    backup_retention_period bigint,
    character_set_name text,
    clone_group_id text,
    cluster_create_time timestamp without time zone,
    copy_tags_to_snapshot boolean,
    cross_account_clone boolean,
    db_cluster_arn text,
    db_cluster_identifier text,
    db_cluster_members jsonb,
    db_cluster_option_group_memberships jsonb,
    db_cluster_parameter_group text,
    db_subnet_group text,
    database_name text,
    db_cluster_resource_id text,
    deletion_protection boolean,
    earliest_restorable_time timestamp without time zone,
    enabled_cloudwatch_logs_exports text[],
    endpoint text,
    engine text,
    engine_version text,
    hosted_zone_id text,
    iam_database_authentication_enabled boolean,
    kms_key_id text,
    latest_restorable_time timestamp without time zone,
    master_username text,
    multi_az boolean,
    percent_progress text,
    port bigint,
    preferred_backup_window text,
    preferred_maintenance_window text,
    read_replica_identifiers text[],
    reader_endpoint text,
    replication_source_identifier text,
    serverless_v2_scaling_configuration jsonb,
    status text,
    storage_encrypted boolean,
    vpc_security_groups jsonb
);


ALTER TABLE public.aws_neptune_clusters OWNER TO postgres;

--
-- Name: aws_neptune_db_parameter_group_db_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_db_parameter_group_db_parameters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    db_parameter_group_arn text,
    allowed_values text,
    apply_method text,
    apply_type text,
    data_type text,
    description text,
    is_modifiable boolean,
    minimum_engine_version text,
    parameter_name text,
    parameter_value text,
    source text
);


ALTER TABLE public.aws_neptune_db_parameter_group_db_parameters OWNER TO postgres;

--
-- Name: aws_neptune_db_parameter_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_db_parameter_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    db_parameter_group_arn text,
    db_parameter_group_family text,
    db_parameter_group_name text,
    description text
);


ALTER TABLE public.aws_neptune_db_parameter_groups OWNER TO postgres;

--
-- Name: aws_neptune_event_subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_event_subscriptions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    cust_subscription_id text,
    customer_aws_id text,
    enabled boolean,
    event_categories_list text[],
    event_subscription_arn text,
    sns_topic_arn text,
    source_ids_list text[],
    source_type text,
    status text,
    subscription_creation_time text
);


ALTER TABLE public.aws_neptune_event_subscriptions OWNER TO postgres;

--
-- Name: aws_neptune_global_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_global_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    deletion_protection boolean,
    engine text,
    engine_version text,
    global_cluster_arn text,
    global_cluster_identifier text,
    global_cluster_members jsonb,
    global_cluster_resource_id text,
    status text,
    storage_encrypted boolean
);


ALTER TABLE public.aws_neptune_global_clusters OWNER TO postgres;

--
-- Name: aws_neptune_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    allocated_storage bigint,
    auto_minor_version_upgrade boolean,
    availability_zone text,
    backup_retention_period bigint,
    ca_certificate_identifier text,
    character_set_name text,
    copy_tags_to_snapshot boolean,
    db_cluster_identifier text,
    db_instance_arn text,
    db_instance_class text,
    db_instance_identifier text,
    db_instance_status text,
    db_name text,
    db_parameter_groups jsonb,
    db_security_groups jsonb,
    db_subnet_group jsonb,
    db_instance_port bigint,
    dbi_resource_id text,
    deletion_protection boolean,
    domain_memberships jsonb,
    enabled_cloudwatch_logs_exports text[],
    endpoint jsonb,
    engine text,
    engine_version text,
    enhanced_monitoring_resource_arn text,
    iam_database_authentication_enabled boolean,
    instance_create_time timestamp without time zone,
    iops bigint,
    kms_key_id text,
    latest_restorable_time timestamp without time zone,
    license_model text,
    master_username text,
    monitoring_interval bigint,
    monitoring_role_arn text,
    multi_az boolean,
    option_group_memberships jsonb,
    pending_modified_values jsonb,
    performance_insights_enabled boolean,
    performance_insights_kms_key_id text,
    preferred_backup_window text,
    preferred_maintenance_window text,
    promotion_tier bigint,
    publicly_accessible boolean,
    read_replica_db_cluster_identifiers text[],
    read_replica_db_instance_identifiers text[],
    read_replica_source_db_instance_identifier text,
    secondary_availability_zone text,
    status_infos jsonb,
    storage_encrypted boolean,
    storage_type text,
    tde_credential_arn text,
    timezone text,
    vpc_security_groups jsonb
);


ALTER TABLE public.aws_neptune_instances OWNER TO postgres;

--
-- Name: aws_neptune_subnet_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_neptune_subnet_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    db_subnet_group_description text,
    db_subnet_group_name text,
    subnet_group_status text,
    subnets jsonb,
    vpc_id text,
    db_subnet_group_arn text
);


ALTER TABLE public.aws_neptune_subnet_groups OWNER TO postgres;

--
-- Name: aws_organization_resource_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_organization_resource_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    content text,
    resource_policy_summary jsonb
);


ALTER TABLE public.aws_organization_resource_policies OWNER TO postgres;

--
-- Name: aws_organizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_organizations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    arn text NOT NULL,
    feature_set text,
    id text,
    master_account_arn text,
    master_account_email text,
    master_account_id text
);


ALTER TABLE public.aws_organizations OWNER TO postgres;

--
-- Name: aws_organizations_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_organizations_accounts (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    tags jsonb,
    arn text NOT NULL,
    email text,
    id text,
    joined_method text,
    joined_timestamp timestamp without time zone,
    name text,
    status text
);


ALTER TABLE public.aws_organizations_accounts OWNER TO postgres;

--
-- Name: aws_organizations_delegated_administrators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_organizations_delegated_administrators (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    arn text NOT NULL,
    delegation_enabled_date timestamp without time zone,
    email text,
    id text,
    joined_method text,
    joined_timestamp timestamp without time zone,
    name text,
    status text
);


ALTER TABLE public.aws_organizations_delegated_administrators OWNER TO postgres;

--
-- Name: aws_organizations_delegated_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_organizations_delegated_services (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    delegation_enabled_date timestamp without time zone,
    service_principal text NOT NULL
);


ALTER TABLE public.aws_organizations_delegated_services OWNER TO postgres;

--
-- Name: aws_organizations_organizational_units; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_organizations_organizational_units (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    arn text NOT NULL,
    id text,
    name text
);


ALTER TABLE public.aws_organizations_organizational_units OWNER TO postgres;

--
-- Name: aws_organizations_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_organizations_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    content jsonb,
    arn text NOT NULL,
    aws_managed boolean,
    description text,
    id text,
    name text,
    type text
);


ALTER TABLE public.aws_organizations_policies OWNER TO postgres;

--
-- Name: aws_organizations_roots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_organizations_roots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    tags jsonb,
    arn text NOT NULL,
    id text,
    name text,
    policy_types jsonb
);


ALTER TABLE public.aws_organizations_roots OWNER TO postgres;

--
-- Name: aws_policy_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_policy_results (
    execution_time timestamp with time zone,
    framework character varying(255),
    check_id character varying(255),
    title text,
    account_id character varying(1024),
    resource_id character varying(1024),
    status character varying(16)
);


ALTER TABLE public.aws_policy_results OWNER TO postgres;

--
-- Name: aws_qldb_ledger_journal_kinesis_streams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_qldb_ledger_journal_kinesis_streams (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    ledger_arn text,
    kinesis_configuration jsonb,
    ledger_name text,
    role_arn text,
    status text,
    stream_id text,
    stream_name text,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    error_cause text,
    exclusive_end_time timestamp without time zone,
    inclusive_start_time timestamp without time zone
);


ALTER TABLE public.aws_qldb_ledger_journal_kinesis_streams OWNER TO postgres;

--
-- Name: aws_qldb_ledger_journal_s3_exports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_qldb_ledger_journal_s3_exports (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    ledger_arn text,
    exclusive_end_time timestamp without time zone,
    export_creation_time timestamp without time zone,
    export_id text,
    inclusive_start_time timestamp without time zone,
    ledger_name text,
    role_arn text,
    s3_export_configuration jsonb,
    status text,
    output_format text
);


ALTER TABLE public.aws_qldb_ledger_journal_s3_exports OWNER TO postgres;

--
-- Name: aws_qldb_ledgers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_qldb_ledgers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    creation_date_time timestamp without time zone,
    deletion_protection boolean,
    encryption_description jsonb,
    name text,
    permissions_mode text,
    state text,
    result_metadata jsonb
);


ALTER TABLE public.aws_qldb_ledgers OWNER TO postgres;

--
-- Name: aws_quicksight_analyses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_analyses (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    analysis_id text,
    arn text NOT NULL,
    created_time timestamp without time zone,
    data_set_arns text[],
    errors jsonb,
    last_updated_time timestamp without time zone,
    name text,
    sheets jsonb,
    status text,
    theme_arn text
);


ALTER TABLE public.aws_quicksight_analyses OWNER TO postgres;

--
-- Name: aws_quicksight_dashboards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_dashboards (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    arn text NOT NULL,
    created_time timestamp without time zone,
    dashboard_id text,
    last_published_time timestamp without time zone,
    last_updated_time timestamp without time zone,
    name text,
    published_version_number bigint
);


ALTER TABLE public.aws_quicksight_dashboards OWNER TO postgres;

--
-- Name: aws_quicksight_data_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_data_sets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    arn text NOT NULL,
    column_level_permission_rules_applied boolean,
    created_time timestamp without time zone,
    data_set_id text,
    import_mode text,
    last_updated_time timestamp without time zone,
    name text,
    row_level_permission_data_set jsonb,
    row_level_permission_tag_configuration_applied boolean
);


ALTER TABLE public.aws_quicksight_data_sets OWNER TO postgres;

--
-- Name: aws_quicksight_data_sources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_data_sources (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    arn text NOT NULL,
    created_time timestamp without time zone,
    data_source_id text,
    error_info jsonb,
    last_updated_time timestamp without time zone,
    name text,
    secret_arn text,
    ssl_properties jsonb,
    status text,
    type text,
    vpc_connection_properties jsonb
);


ALTER TABLE public.aws_quicksight_data_sources OWNER TO postgres;

--
-- Name: aws_quicksight_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_folders (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    arn text NOT NULL,
    created_time timestamp without time zone,
    folder_id text,
    folder_path text[],
    folder_type text,
    last_updated_time timestamp without time zone,
    name text
);


ALTER TABLE public.aws_quicksight_folders OWNER TO postgres;

--
-- Name: aws_quicksight_group_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_group_members (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    group_arn text NOT NULL,
    arn text NOT NULL,
    member_name text
);


ALTER TABLE public.aws_quicksight_group_members OWNER TO postgres;

--
-- Name: aws_quicksight_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    arn text NOT NULL,
    description text,
    group_name text,
    principal_id text
);


ALTER TABLE public.aws_quicksight_groups OWNER TO postgres;

--
-- Name: aws_quicksight_ingestions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_ingestions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    data_set_arn text NOT NULL,
    arn text NOT NULL,
    created_time timestamp without time zone,
    ingestion_status text,
    error_info jsonb,
    ingestion_id text,
    ingestion_size_in_bytes bigint,
    ingestion_time_in_seconds bigint,
    queue_info jsonb,
    request_source text,
    request_type text,
    row_info jsonb
);


ALTER TABLE public.aws_quicksight_ingestions OWNER TO postgres;

--
-- Name: aws_quicksight_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_templates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    arn text NOT NULL,
    created_time timestamp without time zone,
    last_updated_time timestamp without time zone,
    latest_version_number bigint,
    name text,
    template_id text
);


ALTER TABLE public.aws_quicksight_templates OWNER TO postgres;

--
-- Name: aws_quicksight_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_quicksight_users (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    tags jsonb,
    active boolean,
    arn text NOT NULL,
    custom_permissions_name text,
    email text,
    external_login_federation_provider_type text,
    external_login_federation_provider_url text,
    external_login_id text,
    identity_type text,
    principal_id text,
    role text,
    user_name text
);


ALTER TABLE public.aws_quicksight_users OWNER TO postgres;

--
-- Name: aws_ram_principals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ram_principals (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    creation_time timestamp without time zone,
    external boolean,
    id text NOT NULL,
    last_updated_time timestamp without time zone,
    resource_share_arn text NOT NULL
);


ALTER TABLE public.aws_ram_principals OWNER TO postgres;

--
-- Name: aws_ram_resource_share_associations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ram_resource_share_associations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    associated_entity text NOT NULL,
    association_type text,
    creation_time timestamp without time zone,
    external boolean,
    last_updated_time timestamp without time zone,
    resource_share_arn text NOT NULL,
    resource_share_name text,
    status text,
    status_message text
);


ALTER TABLE public.aws_ram_resource_share_associations OWNER TO postgres;

--
-- Name: aws_ram_resource_share_invitations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ram_resource_share_invitations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    arn text NOT NULL,
    receiver_combined text NOT NULL,
    invitation_timestamp timestamp without time zone,
    receiver_account_id text,
    receiver_arn text,
    resource_share_arn text,
    resource_share_associations jsonb,
    resource_share_invitation_arn text,
    resource_share_name text,
    sender_account_id text,
    status text
);


ALTER TABLE public.aws_ram_resource_share_invitations OWNER TO postgres;

--
-- Name: aws_ram_resource_share_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ram_resource_share_permissions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    permission jsonb,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    default_version boolean,
    is_resource_type_default boolean,
    last_updated_time timestamp without time zone,
    name text,
    resource_type text,
    status text,
    version text NOT NULL
);


ALTER TABLE public.aws_ram_resource_share_permissions OWNER TO postgres;

--
-- Name: aws_ram_resource_shares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ram_resource_shares (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    arn text NOT NULL,
    tags jsonb,
    allow_external_principals boolean,
    creation_time timestamp without time zone,
    feature_set text,
    last_updated_time timestamp without time zone,
    name text,
    owning_account_id text,
    resource_share_arn text,
    status text,
    status_message text
);


ALTER TABLE public.aws_ram_resource_shares OWNER TO postgres;

--
-- Name: aws_ram_resource_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ram_resource_types (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    resource_region_scope text,
    resource_type text NOT NULL,
    service_name text NOT NULL
);


ALTER TABLE public.aws_ram_resource_types OWNER TO postgres;

--
-- Name: aws_ram_resources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ram_resources (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    last_updated_time timestamp without time zone,
    resource_group_arn text,
    resource_region_scope text,
    resource_share_arn text NOT NULL,
    status text,
    status_message text,
    type text
);


ALTER TABLE public.aws_ram_resources OWNER TO postgres;

--
-- Name: aws_rds_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_certificates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text,
    arn text NOT NULL,
    certificate_arn text,
    certificate_identifier text,
    certificate_type text,
    customer_override boolean,
    customer_override_valid_till timestamp without time zone,
    thumbprint text,
    valid_from timestamp without time zone,
    valid_till timestamp without time zone
);


ALTER TABLE public.aws_rds_certificates OWNER TO postgres;

--
-- Name: aws_rds_cluster_backtracks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_cluster_backtracks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    db_cluster_arn text NOT NULL,
    backtrack_identifier text NOT NULL,
    backtrack_request_creation_time timestamp without time zone,
    backtrack_to timestamp without time zone,
    backtracked_from timestamp without time zone,
    db_cluster_identifier text,
    status text
);


ALTER TABLE public.aws_rds_cluster_backtracks OWNER TO postgres;

--
-- Name: aws_rds_cluster_parameter_group_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_cluster_parameter_group_parameters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cluster_parameter_group_arn text,
    allowed_values text,
    apply_method text,
    apply_type text,
    data_type text,
    description text,
    is_modifiable boolean,
    minimum_engine_version text,
    parameter_name text,
    parameter_value text,
    source text,
    supported_engine_modes text[]
);


ALTER TABLE public.aws_rds_cluster_parameter_group_parameters OWNER TO postgres;

--
-- Name: aws_rds_cluster_parameter_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_cluster_parameter_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    db_cluster_parameter_group_arn text,
    db_cluster_parameter_group_name text,
    db_parameter_group_family text,
    description text
);


ALTER TABLE public.aws_rds_cluster_parameter_groups OWNER TO postgres;

--
-- Name: aws_rds_cluster_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_cluster_parameters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    allowed_values text,
    apply_method text,
    apply_type text,
    data_type text,
    description text,
    is_modifiable boolean,
    minimum_engine_version text,
    parameter_name text,
    parameter_value text,
    source text,
    supported_engine_modes text[]
);


ALTER TABLE public.aws_rds_cluster_parameters OWNER TO postgres;

--
-- Name: aws_rds_cluster_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_cluster_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    attributes jsonb,
    allocated_storage bigint,
    availability_zones text[],
    cluster_create_time timestamp without time zone,
    db_cluster_identifier text,
    db_cluster_snapshot_arn text,
    db_cluster_snapshot_identifier text,
    db_system_id text,
    engine text,
    engine_mode text,
    engine_version text,
    iam_database_authentication_enabled boolean,
    kms_key_id text,
    license_model text,
    master_username text,
    percent_progress bigint,
    port bigint,
    snapshot_create_time timestamp without time zone,
    snapshot_type text,
    source_db_cluster_snapshot_arn text,
    status text,
    storage_encrypted boolean,
    vpc_id text
);


ALTER TABLE public.aws_rds_cluster_snapshots OWNER TO postgres;

--
-- Name: aws_rds_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    activity_stream_kinesis_stream_name text,
    activity_stream_kms_key_id text,
    activity_stream_mode text,
    activity_stream_status text,
    allocated_storage bigint,
    associated_roles jsonb,
    auto_minor_version_upgrade boolean,
    automatic_restart_time timestamp without time zone,
    availability_zones text[],
    backtrack_consumed_change_records bigint,
    backtrack_window bigint,
    backup_retention_period bigint,
    capacity bigint,
    character_set_name text,
    clone_group_id text,
    cluster_create_time timestamp without time zone,
    copy_tags_to_snapshot boolean,
    cross_account_clone boolean,
    custom_endpoints text[],
    db_cluster_arn text,
    db_cluster_identifier text,
    db_cluster_instance_class text,
    db_cluster_members jsonb,
    db_cluster_option_group_memberships jsonb,
    db_cluster_parameter_group text,
    db_subnet_group text,
    db_system_id text,
    database_name text,
    db_cluster_resource_id text,
    deletion_protection boolean,
    domain_memberships jsonb,
    earliest_backtrack_time timestamp without time zone,
    earliest_restorable_time timestamp without time zone,
    enabled_cloudwatch_logs_exports text[],
    endpoint text,
    engine text,
    engine_mode text,
    engine_version text,
    global_write_forwarding_requested boolean,
    global_write_forwarding_status text,
    hosted_zone_id text,
    http_endpoint_enabled boolean,
    iam_database_authentication_enabled boolean,
    iops bigint,
    kms_key_id text,
    latest_restorable_time timestamp without time zone,
    master_user_secret jsonb,
    master_username text,
    monitoring_interval bigint,
    monitoring_role_arn text,
    multi_az boolean,
    network_type text,
    pending_modified_values jsonb,
    percent_progress text,
    performance_insights_enabled boolean,
    performance_insights_kms_key_id text,
    performance_insights_retention_period bigint,
    port bigint,
    preferred_backup_window text,
    preferred_maintenance_window text,
    publicly_accessible boolean,
    read_replica_identifiers text[],
    reader_endpoint text,
    replication_source_identifier text,
    scaling_configuration_info jsonb,
    serverless_v2_scaling_configuration jsonb,
    status text,
    storage_encrypted boolean,
    storage_type text,
    vpc_security_groups jsonb
);


ALTER TABLE public.aws_rds_clusters OWNER TO postgres;

--
-- Name: aws_rds_db_parameter_group_db_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_db_parameter_group_db_parameters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    db_parameter_group_arn text,
    allowed_values text,
    apply_method text,
    apply_type text,
    data_type text,
    description text,
    is_modifiable boolean,
    minimum_engine_version text,
    parameter_name text,
    parameter_value text,
    source text,
    supported_engine_modes text[]
);


ALTER TABLE public.aws_rds_db_parameter_group_db_parameters OWNER TO postgres;

--
-- Name: aws_rds_db_parameter_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_db_parameter_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    db_parameter_group_arn text,
    db_parameter_group_family text,
    db_parameter_group_name text,
    description text
);


ALTER TABLE public.aws_rds_db_parameter_groups OWNER TO postgres;

--
-- Name: aws_rds_db_security_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_db_security_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    db_security_group_arn text,
    db_security_group_description text,
    db_security_group_name text,
    ec2_security_groups jsonb,
    ip_ranges jsonb,
    owner_id text,
    vpc_id text
);


ALTER TABLE public.aws_rds_db_security_groups OWNER TO postgres;

--
-- Name: aws_rds_db_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_db_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    attributes jsonb,
    allocated_storage bigint,
    availability_zone text,
    db_instance_identifier text,
    db_snapshot_arn text,
    db_snapshot_identifier text,
    dbi_resource_id text,
    encrypted boolean,
    engine text,
    engine_version text,
    iam_database_authentication_enabled boolean,
    instance_create_time timestamp without time zone,
    iops bigint,
    kms_key_id text,
    license_model text,
    master_username text,
    option_group_name text,
    original_snapshot_create_time timestamp without time zone,
    percent_progress bigint,
    port bigint,
    processor_features jsonb,
    snapshot_create_time timestamp without time zone,
    snapshot_database_time timestamp without time zone,
    snapshot_target text,
    snapshot_type text,
    source_db_snapshot_identifier text,
    source_region text,
    status text,
    storage_throughput bigint,
    storage_type text,
    tde_credential_arn text,
    timezone text,
    vpc_id text
);


ALTER TABLE public.aws_rds_db_snapshots OWNER TO postgres;

--
-- Name: aws_rds_engine_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_engine_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    _engine_version_hash text NOT NULL,
    tag_list jsonb,
    create_time timestamp without time zone,
    custom_db_engine_version_manifest text,
    db_engine_description text,
    db_engine_media_type text,
    db_engine_version_arn text,
    db_engine_version_description text,
    db_parameter_group_family text,
    database_installation_files_s3_bucket_name text,
    database_installation_files_s3_prefix text,
    default_character_set jsonb,
    engine text,
    engine_version text,
    exportable_log_types text[],
    image jsonb,
    kms_key_id text,
    major_engine_version text,
    status text,
    supported_ca_certificate_identifiers text[],
    supported_character_sets jsonb,
    supported_engine_modes text[],
    supported_feature_names text[],
    supported_nchar_character_sets jsonb,
    supported_timezones jsonb,
    supports_babelfish boolean,
    supports_certificate_rotation_without_restart boolean,
    supports_global_databases boolean,
    supports_log_exports_to_cloudwatch_logs boolean,
    supports_parallel_query boolean,
    supports_read_replica boolean,
    valid_upgrade_target jsonb
);


ALTER TABLE public.aws_rds_engine_versions OWNER TO postgres;

--
-- Name: aws_rds_event_subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_event_subscriptions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    cust_subscription_id text,
    customer_aws_id text,
    enabled boolean,
    event_categories_list text[],
    event_subscription_arn text,
    sns_topic_arn text,
    source_ids_list text[],
    source_type text,
    status text,
    subscription_creation_time text
);


ALTER TABLE public.aws_rds_event_subscriptions OWNER TO postgres;

--
-- Name: aws_rds_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_events (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    date timestamp without time zone,
    event_categories text[],
    message text,
    source_arn text,
    source_identifier text,
    source_type text
);


ALTER TABLE public.aws_rds_events OWNER TO postgres;

--
-- Name: aws_rds_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    processor_features jsonb,
    tags jsonb,
    activity_stream_engine_native_audit_fields_included boolean,
    activity_stream_kinesis_stream_name text,
    activity_stream_kms_key_id text,
    activity_stream_mode text,
    activity_stream_policy_status text,
    activity_stream_status text,
    allocated_storage bigint,
    associated_roles jsonb,
    auto_minor_version_upgrade boolean,
    automatic_restart_time timestamp without time zone,
    automation_mode text,
    availability_zone text,
    aws_backup_recovery_point_arn text,
    backup_retention_period bigint,
    backup_target text,
    ca_certificate_identifier text,
    certificate_details jsonb,
    character_set_name text,
    copy_tags_to_snapshot boolean,
    custom_iam_instance_profile text,
    customer_owned_ip_enabled boolean,
    db_cluster_identifier text,
    db_instance_arn text,
    db_instance_automated_backups_replications jsonb,
    db_instance_class text,
    db_instance_identifier text,
    db_instance_status text,
    db_name text,
    db_parameter_groups jsonb,
    db_security_groups jsonb,
    db_subnet_group jsonb,
    db_system_id text,
    db_instance_port bigint,
    dbi_resource_id text,
    deletion_protection boolean,
    domain_memberships jsonb,
    enabled_cloudwatch_logs_exports text[],
    endpoint jsonb,
    engine text,
    engine_version text,
    enhanced_monitoring_resource_arn text,
    iam_database_authentication_enabled boolean,
    instance_create_time timestamp without time zone,
    iops bigint,
    kms_key_id text,
    latest_restorable_time timestamp without time zone,
    license_model text,
    listener_endpoint jsonb,
    master_user_secret jsonb,
    master_username text,
    max_allocated_storage bigint,
    monitoring_interval bigint,
    monitoring_role_arn text,
    multi_az boolean,
    nchar_character_set_name text,
    network_type text,
    option_group_memberships jsonb,
    pending_modified_values jsonb,
    performance_insights_enabled boolean,
    performance_insights_kms_key_id text,
    performance_insights_retention_period bigint,
    preferred_backup_window text,
    preferred_maintenance_window text,
    promotion_tier bigint,
    publicly_accessible boolean,
    read_replica_db_cluster_identifiers text[],
    read_replica_db_instance_identifiers text[],
    read_replica_source_db_instance_identifier text,
    replica_mode text,
    resume_full_automation_mode_time timestamp without time zone,
    secondary_availability_zone text,
    status_infos jsonb,
    storage_encrypted boolean,
    storage_throughput bigint,
    storage_type text,
    tde_credential_arn text,
    timezone text,
    vpc_security_groups jsonb
);


ALTER TABLE public.aws_rds_instances OWNER TO postgres;

--
-- Name: aws_rds_option_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_option_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    allows_vpc_and_non_vpc_instance_memberships boolean,
    copy_timestamp timestamp without time zone,
    engine_name text,
    major_engine_version text,
    option_group_arn text,
    option_group_description text,
    option_group_name text,
    options jsonb,
    source_account_id text,
    source_option_group text,
    vpc_id text
);


ALTER TABLE public.aws_rds_option_groups OWNER TO postgres;

--
-- Name: aws_rds_reserved_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_reserved_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    currency_code text,
    db_instance_class text,
    db_instance_count bigint,
    duration bigint,
    fixed_price double precision,
    lease_id text,
    multi_az boolean,
    offering_type text,
    product_description text,
    recurring_charges jsonb,
    reserved_db_instance_arn text,
    reserved_db_instance_id text,
    reserved_db_instances_offering_id text,
    start_time timestamp without time zone,
    state text,
    usage_price double precision
);


ALTER TABLE public.aws_rds_reserved_instances OWNER TO postgres;

--
-- Name: aws_rds_subnet_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_rds_subnet_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    db_subnet_group_arn text,
    db_subnet_group_description text,
    db_subnet_group_name text,
    subnet_group_status text,
    subnets jsonb,
    supported_network_types text[],
    vpc_id text
);


ALTER TABLE public.aws_rds_subnet_groups OWNER TO postgres;

--
-- Name: aws_redshift_cluster_parameter_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_redshift_cluster_parameter_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cluster_arn text NOT NULL,
    parameter_group_name text NOT NULL,
    cluster_parameter_status_list jsonb,
    parameter_apply_status text
);


ALTER TABLE public.aws_redshift_cluster_parameter_groups OWNER TO postgres;

--
-- Name: aws_redshift_cluster_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_redshift_cluster_parameters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    cluster_arn text NOT NULL,
    parameter_name text NOT NULL,
    allowed_values text,
    apply_type text,
    data_type text,
    description text,
    is_modifiable boolean,
    minimum_engine_version text,
    parameter_value text,
    source text
);


ALTER TABLE public.aws_redshift_cluster_parameters OWNER TO postgres;

--
-- Name: aws_redshift_clusters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_redshift_clusters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    logging_status jsonb,
    tags jsonb,
    allow_version_upgrade boolean,
    aqua_configuration jsonb,
    automated_snapshot_retention_period bigint,
    availability_zone text,
    availability_zone_relocation_status text,
    cluster_availability_status text,
    cluster_create_time timestamp without time zone,
    cluster_identifier text,
    cluster_namespace_arn text,
    cluster_nodes jsonb,
    cluster_public_key text,
    cluster_revision_number text,
    cluster_security_groups jsonb,
    cluster_snapshot_copy_status jsonb,
    cluster_status text,
    cluster_subnet_group_name text,
    cluster_version text,
    db_name text,
    data_transfer_progress jsonb,
    default_iam_role_arn text,
    deferred_maintenance_windows jsonb,
    elastic_ip_status jsonb,
    elastic_resize_number_of_node_options text,
    encrypted boolean,
    endpoint jsonb,
    enhanced_vpc_routing boolean,
    expected_next_snapshot_schedule_time timestamp without time zone,
    expected_next_snapshot_schedule_time_status text,
    hsm_status jsonb,
    iam_roles jsonb,
    kms_key_id text,
    maintenance_track_name text,
    manual_snapshot_retention_period bigint,
    master_username text,
    modify_status text,
    next_maintenance_window_start_time timestamp without time zone,
    node_type text,
    number_of_nodes bigint,
    pending_actions text[],
    pending_modified_values jsonb,
    preferred_maintenance_window text,
    publicly_accessible boolean,
    reserved_node_exchange_status jsonb,
    resize_info jsonb,
    restore_status jsonb,
    snapshot_schedule_identifier text,
    snapshot_schedule_state text,
    total_storage_capacity_in_mega_bytes bigint,
    vpc_id text,
    vpc_security_groups jsonb
);


ALTER TABLE public.aws_redshift_clusters OWNER TO postgres;

--
-- Name: aws_redshift_event_subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_redshift_event_subscriptions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    cust_subscription_id text,
    customer_aws_id text,
    enabled boolean,
    event_categories_list text[],
    severity text,
    sns_topic_arn text,
    source_ids_list text[],
    source_type text,
    status text,
    subscription_creation_time timestamp without time zone
);


ALTER TABLE public.aws_redshift_event_subscriptions OWNER TO postgres;

--
-- Name: aws_redshift_snapshots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_redshift_snapshots (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    accounts_with_restore_access jsonb,
    actual_incremental_backup_size_in_mega_bytes double precision,
    availability_zone text,
    backup_progress_in_mega_bytes double precision,
    cluster_create_time timestamp without time zone,
    cluster_identifier text,
    cluster_version text,
    current_backup_rate_in_mega_bytes_per_second double precision,
    db_name text,
    elapsed_time_in_seconds bigint,
    encrypted boolean,
    encrypted_with_hsm boolean,
    engine_full_version text,
    enhanced_vpc_routing boolean,
    estimated_seconds_to_completion bigint,
    kms_key_id text,
    maintenance_track_name text,
    manual_snapshot_remaining_days bigint,
    manual_snapshot_retention_period bigint,
    master_username text,
    node_type text,
    number_of_nodes bigint,
    owner_account text,
    port bigint,
    restorable_node_types text[],
    snapshot_create_time timestamp without time zone,
    snapshot_identifier text,
    snapshot_retention_start_time timestamp without time zone,
    snapshot_type text,
    source_region text,
    status text,
    total_backup_size_in_mega_bytes double precision,
    vpc_id text
);


ALTER TABLE public.aws_redshift_snapshots OWNER TO postgres;

--
-- Name: aws_redshift_subnet_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_redshift_subnet_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    cluster_subnet_group_name text,
    description text,
    subnet_group_status text,
    subnets jsonb,
    vpc_id text
);


ALTER TABLE public.aws_redshift_subnet_groups OWNER TO postgres;

--
-- Name: aws_regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_regions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    enabled boolean,
    partition text,
    region text,
    endpoint text,
    opt_in_status text,
    region_name text
);


ALTER TABLE public.aws_regions OWNER TO postgres;

--
-- Name: aws_resiliencehub_alarm_recommendations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_alarm_recommendations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    app_arn text NOT NULL,
    assessment_arn text NOT NULL,
    name text,
    recommendation_id text NOT NULL,
    reference_id text,
    type text,
    app_component_name text,
    description text,
    items jsonb,
    prerequisite text
);


ALTER TABLE public.aws_resiliencehub_alarm_recommendations OWNER TO postgres;

--
-- Name: aws_resiliencehub_app_assessments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_app_assessments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    app_arn text NOT NULL,
    arn text NOT NULL,
    assessment_arn text,
    assessment_status text,
    invoker text,
    app_version text,
    assessment_name text,
    compliance jsonb,
    compliance_status text,
    cost jsonb,
    end_time timestamp without time zone,
    message text,
    policy jsonb,
    resiliency_score jsonb,
    resource_errors_details jsonb,
    start_time timestamp without time zone,
    tags jsonb
);


ALTER TABLE public.aws_resiliencehub_app_assessments OWNER TO postgres;

--
-- Name: aws_resiliencehub_app_component_compliances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_app_component_compliances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    app_arn text NOT NULL,
    assessment_arn text NOT NULL,
    app_component_name text NOT NULL,
    compliance jsonb,
    cost jsonb,
    message text,
    resiliency_score jsonb,
    status text
);


ALTER TABLE public.aws_resiliencehub_app_component_compliances OWNER TO postgres;

--
-- Name: aws_resiliencehub_app_version_resource_mappings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_app_version_resource_mappings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    app_arn text NOT NULL,
    app_version text NOT NULL,
    physical_resource_identifier text NOT NULL,
    mapping_type text,
    physical_resource_id jsonb,
    app_registry_app_name text,
    logical_stack_name text,
    resource_group_name text,
    resource_name text,
    terraform_source_name text
);


ALTER TABLE public.aws_resiliencehub_app_version_resource_mappings OWNER TO postgres;

--
-- Name: aws_resiliencehub_app_version_resources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_app_version_resources (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    app_arn text NOT NULL,
    app_version text NOT NULL,
    physical_resource_identifier text NOT NULL,
    logical_resource_id jsonb,
    physical_resource_id jsonb,
    resource_type text,
    app_components jsonb,
    resource_name text
);


ALTER TABLE public.aws_resiliencehub_app_version_resources OWNER TO postgres;

--
-- Name: aws_resiliencehub_app_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_app_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    app_arn text NOT NULL,
    app_version text NOT NULL
);


ALTER TABLE public.aws_resiliencehub_app_versions OWNER TO postgres;

--
-- Name: aws_resiliencehub_apps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_apps (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    app_arn text,
    creation_time timestamp without time zone,
    name text,
    assessment_schedule text,
    compliance_status text,
    description text,
    last_app_compliance_evaluation_time timestamp without time zone,
    last_resiliency_score_evaluation_time timestamp without time zone,
    policy_arn text,
    resiliency_score double precision,
    status text,
    tags jsonb
);


ALTER TABLE public.aws_resiliencehub_apps OWNER TO postgres;

--
-- Name: aws_resiliencehub_component_recommendations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_component_recommendations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    app_arn text NOT NULL,
    assessment_arn text NOT NULL,
    app_component_name text NOT NULL,
    config_recommendations jsonb,
    recommendation_status text
);


ALTER TABLE public.aws_resiliencehub_component_recommendations OWNER TO postgres;

--
-- Name: aws_resiliencehub_recommendation_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_recommendation_templates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    assessment_arn text NOT NULL,
    format text,
    name text,
    recommendation_template_arn text,
    recommendation_types text[],
    status text,
    app_arn text NOT NULL,
    end_time timestamp without time zone,
    message text,
    needs_replacements boolean,
    recommendation_ids text[],
    start_time timestamp without time zone,
    tags jsonb,
    templates_location jsonb
);


ALTER TABLE public.aws_resiliencehub_recommendation_templates OWNER TO postgres;

--
-- Name: aws_resiliencehub_resiliency_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_resiliency_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    data_location_constraint text,
    estimated_cost_tier text,
    policy jsonb,
    policy_arn text,
    policy_description text,
    policy_name text,
    tags jsonb,
    tier text
);


ALTER TABLE public.aws_resiliencehub_resiliency_policies OWNER TO postgres;

--
-- Name: aws_resiliencehub_sop_recommendations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_sop_recommendations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    app_arn text NOT NULL,
    assessment_arn text NOT NULL,
    recommendation_id text NOT NULL,
    reference_id text,
    service_type text,
    app_component_name text,
    description text,
    items jsonb,
    name text,
    prerequisite text
);


ALTER TABLE public.aws_resiliencehub_sop_recommendations OWNER TO postgres;

--
-- Name: aws_resiliencehub_suggested_resiliency_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_suggested_resiliency_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    data_location_constraint text,
    estimated_cost_tier text,
    policy jsonb,
    policy_arn text,
    policy_description text,
    policy_name text,
    tags jsonb,
    tier text
);


ALTER TABLE public.aws_resiliencehub_suggested_resiliency_policies OWNER TO postgres;

--
-- Name: aws_resiliencehub_test_recommendations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resiliencehub_test_recommendations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    app_arn text NOT NULL,
    assessment_arn text NOT NULL,
    reference_id text,
    app_component_name text,
    depends_on_alarms text[],
    description text,
    intent text,
    items jsonb,
    name text,
    prerequisite text,
    recommendation_id text NOT NULL,
    risk text,
    type text
);


ALTER TABLE public.aws_resiliencehub_test_recommendations OWNER TO postgres;

--
-- Name: aws_resourcegroups_resource_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_resourcegroups_resource_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    group_arn text,
    name text,
    description text,
    query text,
    type text
);


ALTER TABLE public.aws_resourcegroups_resource_groups OWNER TO postgres;

--
-- Name: aws_route53_delegation_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_delegation_sets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    name_servers text[],
    caller_reference text,
    id text
);


ALTER TABLE public.aws_route53_delegation_sets OWNER TO postgres;

--
-- Name: aws_route53_domains; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_domains (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    domain_name text NOT NULL,
    tags jsonb,
    transfer_lock boolean,
    abuse_contact_email text,
    abuse_contact_phone text,
    admin_contact jsonb,
    admin_privacy boolean,
    auto_renew boolean,
    creation_date timestamp without time zone,
    dns_sec text,
    dnssec_keys jsonb,
    expiration_date timestamp without time zone,
    nameservers jsonb,
    registrant_contact jsonb,
    registrant_privacy boolean,
    registrar_name text,
    registrar_url text,
    registry_domain_id text,
    reseller text,
    status_list text[],
    tech_contact jsonb,
    tech_privacy boolean,
    updated_date timestamp without time zone,
    who_is_server text,
    result_metadata jsonb
);


ALTER TABLE public.aws_route53_domains OWNER TO postgres;

--
-- Name: aws_route53_health_checks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_health_checks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    cloud_watch_alarm_configuration_dimensions jsonb,
    caller_reference text,
    health_check_config jsonb,
    health_check_version bigint,
    id text,
    cloud_watch_alarm_configuration jsonb,
    linked_service jsonb
);


ALTER TABLE public.aws_route53_health_checks OWNER TO postgres;

--
-- Name: aws_route53_hosted_zone_query_logging_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_hosted_zone_query_logging_configs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    hosted_zone_arn text,
    cloud_watch_logs_log_group_arn text,
    hosted_zone_id text,
    id text
);


ALTER TABLE public.aws_route53_hosted_zone_query_logging_configs OWNER TO postgres;

--
-- Name: aws_route53_hosted_zone_resource_record_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_hosted_zone_resource_record_sets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    hosted_zone_arn text,
    name text,
    type text,
    alias_target jsonb,
    cidr_routing_config jsonb,
    failover text,
    geo_location jsonb,
    health_check_id text,
    multi_value_answer boolean,
    region text,
    resource_records jsonb,
    set_identifier text,
    ttl bigint,
    traffic_policy_instance_id text,
    weight bigint
);


ALTER TABLE public.aws_route53_hosted_zone_resource_record_sets OWNER TO postgres;

--
-- Name: aws_route53_hosted_zone_traffic_policy_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_hosted_zone_traffic_policy_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    arn text NOT NULL,
    hosted_zone_arn text,
    hosted_zone_id text,
    id text,
    message text,
    name text,
    state text,
    ttl bigint,
    traffic_policy_id text,
    traffic_policy_type text,
    traffic_policy_version bigint
);


ALTER TABLE public.aws_route53_hosted_zone_traffic_policy_instances OWNER TO postgres;

--
-- Name: aws_route53_hosted_zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_hosted_zones (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    caller_reference text,
    id text,
    name text,
    config jsonb,
    linked_service jsonb,
    resource_record_set_count bigint,
    tags jsonb,
    delegation_set_id text,
    vpcs jsonb
);


ALTER TABLE public.aws_route53_hosted_zones OWNER TO postgres;

--
-- Name: aws_route53_operations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_operations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    domain_name text,
    last_updated_date timestamp without time zone,
    message text,
    operation_id text NOT NULL,
    status text NOT NULL,
    status_flag text,
    submitted_date timestamp without time zone NOT NULL,
    type text NOT NULL
);


ALTER TABLE public.aws_route53_operations OWNER TO postgres;

--
-- Name: aws_route53_traffic_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_traffic_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    id text,
    latest_version bigint,
    name text,
    traffic_policy_count bigint,
    type text
);


ALTER TABLE public.aws_route53_traffic_policies OWNER TO postgres;

--
-- Name: aws_route53_traffic_policy_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_route53_traffic_policy_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    traffic_policy_arn text NOT NULL,
    id text NOT NULL,
    version bigint NOT NULL,
    document jsonb,
    name text,
    type text,
    comment text
);


ALTER TABLE public.aws_route53_traffic_policy_versions OWNER TO postgres;

--
-- Name: aws_s3_access_points; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_s3_access_points (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    bucket text,
    name text,
    network_origin text,
    access_point_arn text,
    alias text,
    bucket_account_id text,
    vpc_configuration jsonb
);


ALTER TABLE public.aws_s3_access_points OWNER TO postgres;

--
-- Name: aws_s3_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_s3_accounts (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    block_public_acls boolean,
    block_public_policy boolean,
    ignore_public_acls boolean,
    restrict_public_buckets boolean,
    config_exists boolean
);


ALTER TABLE public.aws_s3_accounts OWNER TO postgres;

--
-- Name: aws_s3_bucket_cors_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_s3_bucket_cors_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    bucket_arn text,
    allowed_methods text[],
    allowed_origins text[],
    allowed_headers text[],
    expose_headers text[],
    id text,
    max_age_seconds bigint
);


ALTER TABLE public.aws_s3_bucket_cors_rules OWNER TO postgres;

--
-- Name: aws_s3_bucket_encryption_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_s3_bucket_encryption_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    bucket_arn text,
    apply_server_side_encryption_by_default jsonb,
    bucket_key_enabled boolean
);


ALTER TABLE public.aws_s3_bucket_encryption_rules OWNER TO postgres;

--
-- Name: aws_s3_bucket_grants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_s3_bucket_grants (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    bucket_arn text NOT NULL,
    grantee_type text NOT NULL,
    grantee_id text NOT NULL,
    permission text NOT NULL,
    grantee jsonb
);


ALTER TABLE public.aws_s3_bucket_grants OWNER TO postgres;

--
-- Name: aws_s3_bucket_lifecycles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_s3_bucket_lifecycles (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    bucket_arn text,
    status text,
    abort_incomplete_multipart_upload jsonb,
    expiration jsonb,
    id text,
    noncurrent_version_expiration jsonb,
    noncurrent_version_transitions jsonb,
    prefix text,
    transitions jsonb
);


ALTER TABLE public.aws_s3_bucket_lifecycles OWNER TO postgres;

--
-- Name: aws_s3_bucket_websites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_s3_bucket_websites (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    bucket_arn text,
    error_document jsonb,
    index_document jsonb,
    redirect_all_requests_to jsonb,
    routing_rules jsonb
);


ALTER TABLE public.aws_s3_bucket_websites OWNER TO postgres;

--
-- Name: aws_s3_buckets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_s3_buckets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    creation_date timestamp without time zone,
    name text,
    replication_role text,
    replication_rules jsonb,
    region text,
    logging_target_bucket text,
    logging_target_prefix text,
    policy jsonb,
    versioning_status text,
    versioning_mfa_delete text,
    block_public_acls boolean,
    block_public_policy boolean,
    ignore_public_acls boolean,
    restrict_public_buckets boolean,
    tags jsonb,
    ownership_controls text[]
);


ALTER TABLE public.aws_s3_buckets OWNER TO postgres;

--
-- Name: aws_sagemaker_apps; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_sagemaker_apps (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    app_arn text,
    app_name text,
    app_type text,
    creation_time timestamp without time zone,
    domain_id text,
    failure_reason text,
    last_health_check_timestamp timestamp without time zone,
    last_user_activity_timestamp timestamp without time zone,
    resource_spec jsonb,
    space_name text,
    status text,
    user_profile_name text
);


ALTER TABLE public.aws_sagemaker_apps OWNER TO postgres;

--
-- Name: aws_sagemaker_endpoint_configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_sagemaker_endpoint_configurations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    creation_time timestamp without time zone,
    endpoint_config_arn text,
    endpoint_config_name text,
    production_variants jsonb,
    async_inference_config jsonb,
    data_capture_config jsonb,
    explainer_config jsonb,
    kms_key_id text,
    shadow_production_variants jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_sagemaker_endpoint_configurations OWNER TO postgres;

--
-- Name: aws_sagemaker_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_sagemaker_models (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    creation_time timestamp without time zone,
    execution_role_arn text,
    model_arn text,
    model_name text,
    containers jsonb,
    enable_network_isolation boolean,
    inference_execution_config jsonb,
    primary_container jsonb,
    vpc_config jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_sagemaker_models OWNER TO postgres;

--
-- Name: aws_sagemaker_notebook_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_sagemaker_notebook_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    accelerator_types text[],
    additional_code_repositories text[],
    creation_time timestamp without time zone,
    default_code_repository text,
    direct_internet_access text,
    failure_reason text,
    instance_metadata_service_configuration jsonb,
    instance_type text,
    kms_key_id text,
    last_modified_time timestamp without time zone,
    network_interface_id text,
    notebook_instance_arn text,
    notebook_instance_lifecycle_config_name text,
    notebook_instance_name text,
    notebook_instance_status text,
    platform_identifier text,
    role_arn text,
    root_access text,
    security_groups text[],
    subnet_id text,
    url text,
    volume_size_in_gb bigint,
    result_metadata jsonb
);


ALTER TABLE public.aws_sagemaker_notebook_instances OWNER TO postgres;

--
-- Name: aws_sagemaker_training_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_sagemaker_training_jobs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    algorithm_specification jsonb,
    creation_time timestamp without time zone,
    model_artifacts jsonb,
    resource_config jsonb,
    secondary_status text,
    stopping_condition jsonb,
    training_job_arn text,
    training_job_name text,
    training_job_status text,
    auto_ml_job_arn text,
    billable_time_in_seconds bigint,
    checkpoint_config jsonb,
    debug_hook_config jsonb,
    debug_rule_configurations jsonb,
    debug_rule_evaluation_statuses jsonb,
    enable_inter_container_traffic_encryption boolean,
    enable_managed_spot_training boolean,
    enable_network_isolation boolean,
    environment jsonb,
    experiment_config jsonb,
    failure_reason text,
    final_metric_data_list jsonb,
    hyper_parameters jsonb,
    input_data_config jsonb,
    labeling_job_arn text,
    last_modified_time timestamp without time zone,
    output_data_config jsonb,
    profiler_config jsonb,
    profiler_rule_configurations jsonb,
    profiler_rule_evaluation_statuses jsonb,
    profiling_status text,
    retry_strategy jsonb,
    role_arn text,
    secondary_status_transitions jsonb,
    tensor_board_output_config jsonb,
    training_end_time timestamp without time zone,
    training_start_time timestamp without time zone,
    training_time_in_seconds bigint,
    tuning_job_arn text,
    vpc_config jsonb,
    warm_pool_status jsonb,
    result_metadata jsonb
);


ALTER TABLE public.aws_sagemaker_training_jobs OWNER TO postgres;

--
-- Name: aws_savingsplans_plans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_savingsplans_plans (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    commitment text,
    currency text,
    description text,
    ec2_instance_family text,
    "end" text,
    offering_id text,
    payment_option text,
    product_types text[],
    recurring_payment_amount text,
    region text,
    savings_plan_arn text,
    savings_plan_id text,
    savings_plan_type text,
    start text,
    state text,
    tags jsonb,
    term_duration_in_seconds bigint,
    upfront_payment_amount text
);


ALTER TABLE public.aws_savingsplans_plans OWNER TO postgres;

--
-- Name: aws_scheduler_schedule_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_scheduler_schedule_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    creation_date timestamp without time zone,
    last_modification_date timestamp without time zone,
    name text,
    state text
);


ALTER TABLE public.aws_scheduler_schedule_groups OWNER TO postgres;

--
-- Name: aws_scheduler_schedules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_scheduler_schedules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    creation_date timestamp without time zone,
    description text,
    end_date timestamp without time zone,
    flexible_time_window jsonb,
    group_name text,
    kms_key_arn text,
    last_modification_date timestamp without time zone,
    name text,
    schedule_expression text,
    schedule_expression_timezone text,
    start_date timestamp without time zone,
    state text,
    target jsonb
);


ALTER TABLE public.aws_scheduler_schedules OWNER TO postgres;

--
-- Name: aws_secretsmanager_secret_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_secretsmanager_secret_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    secret_arn text NOT NULL,
    created_date timestamp without time zone,
    kms_key_ids text[],
    last_accessed_date timestamp without time zone,
    version_id text NOT NULL,
    version_stages text[]
);


ALTER TABLE public.aws_secretsmanager_secret_versions OWNER TO postgres;

--
-- Name: aws_secretsmanager_secrets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_secretsmanager_secrets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    policy jsonb,
    tags jsonb,
    created_date timestamp without time zone,
    deleted_date timestamp without time zone,
    description text,
    kms_key_id text,
    last_accessed_date timestamp without time zone,
    last_changed_date timestamp without time zone,
    last_rotated_date timestamp without time zone,
    name text,
    next_rotation_date timestamp without time zone,
    owning_service text,
    primary_region text,
    replication_status jsonb,
    rotation_enabled boolean,
    rotation_lambda_arn text,
    rotation_rules jsonb,
    version_ids_to_stages jsonb
);


ALTER TABLE public.aws_secretsmanager_secrets OWNER TO postgres;

--
-- Name: aws_securityhub_findings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_securityhub_findings (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    request_account_id text NOT NULL,
    request_region text NOT NULL,
    aws_account_id text NOT NULL,
    created_at text NOT NULL,
    description text NOT NULL,
    generator_id text NOT NULL,
    id text NOT NULL,
    product_arn text NOT NULL,
    resources jsonb,
    schema_version text NOT NULL,
    title text NOT NULL,
    updated_at text,
    action jsonb,
    company_name text,
    compliance jsonb,
    confidence bigint,
    criticality bigint,
    finding_provider_fields jsonb,
    first_observed_at text,
    last_observed_at text,
    malware jsonb,
    network jsonb,
    network_path jsonb,
    note jsonb,
    patch_summary jsonb,
    process jsonb,
    product_fields jsonb,
    product_name text,
    record_state text,
    region text NOT NULL,
    related_findings jsonb,
    remediation jsonb,
    sample boolean,
    severity jsonb,
    source_url text,
    threat_intel_indicators jsonb,
    threats jsonb,
    types text[],
    user_defined_fields jsonb,
    verification_state text,
    vulnerabilities jsonb,
    workflow jsonb,
    workflow_state text
);


ALTER TABLE public.aws_securityhub_findings OWNER TO postgres;

--
-- Name: aws_servicecatalog_portfolios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_servicecatalog_portfolios (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    created_time timestamp without time zone,
    description text,
    display_name text,
    id text,
    provider_name text
);


ALTER TABLE public.aws_servicecatalog_portfolios OWNER TO postgres;

--
-- Name: aws_servicecatalog_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_servicecatalog_products (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    created_time timestamp without time zone,
    product_arn text,
    product_view_summary jsonb,
    source_connection jsonb,
    status text
);


ALTER TABLE public.aws_servicecatalog_products OWNER TO postgres;

--
-- Name: aws_servicecatalog_provisioned_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_servicecatalog_provisioned_products (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    created_time timestamp without time zone,
    id text,
    idempotency_token text,
    last_provisioning_record_id text,
    last_record_id text,
    last_successful_provisioning_record_id text,
    name text,
    physical_id text,
    product_id text,
    product_name text,
    provisioning_artifact_id text,
    provisioning_artifact_name text,
    status text,
    status_message text,
    type text,
    user_arn text,
    user_arn_session text
);


ALTER TABLE public.aws_servicecatalog_provisioned_products OWNER TO postgres;

--
-- Name: aws_servicequotas_quotas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_servicequotas_quotas (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    adjustable boolean,
    error_reason jsonb,
    global_quota boolean,
    period jsonb,
    quota_arn text,
    quota_code text,
    quota_name text,
    service_code text,
    service_name text,
    unit text,
    usage_metric jsonb,
    value double precision
);


ALTER TABLE public.aws_servicequotas_quotas OWNER TO postgres;

--
-- Name: aws_servicequotas_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_servicequotas_services (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    service_code text NOT NULL,
    service_name text NOT NULL
);


ALTER TABLE public.aws_servicequotas_services OWNER TO postgres;

--
-- Name: aws_ses_active_receipt_rule_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ses_active_receipt_rule_sets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    name text NOT NULL,
    created_timestamp timestamp without time zone,
    rules jsonb
);


ALTER TABLE public.aws_ses_active_receipt_rule_sets OWNER TO postgres;

--
-- Name: aws_ses_configuration_set_event_destinations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ses_configuration_set_event_destinations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    configuration_set_name text NOT NULL,
    name text NOT NULL,
    matching_event_types text[],
    cloud_watch_destination jsonb,
    enabled boolean,
    kinesis_firehose_destination jsonb,
    pinpoint_destination jsonb,
    sns_destination jsonb
);


ALTER TABLE public.aws_ses_configuration_set_event_destinations OWNER TO postgres;

--
-- Name: aws_ses_configuration_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ses_configuration_sets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    name text,
    delivery_options jsonb,
    reputation_options jsonb,
    sending_options jsonb,
    suppression_options jsonb,
    tracking_options jsonb,
    vdm_options jsonb
);


ALTER TABLE public.aws_ses_configuration_sets OWNER TO postgres;

--
-- Name: aws_ses_contact_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ses_contact_lists (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    name text NOT NULL,
    tags jsonb,
    contact_list_name text,
    created_timestamp timestamp without time zone,
    description text,
    last_updated_timestamp timestamp without time zone,
    topics jsonb
);


ALTER TABLE public.aws_ses_contact_lists OWNER TO postgres;

--
-- Name: aws_ses_custom_verification_email_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ses_custom_verification_email_templates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    failure_redirection_url text,
    from_email_address text,
    success_redirection_url text,
    content text,
    name text,
    subject text
);


ALTER TABLE public.aws_ses_custom_verification_email_templates OWNER TO postgres;

--
-- Name: aws_ses_identities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ses_identities (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    identity_name text,
    sending_enabled boolean,
    configuration_set_name text,
    dkim_attributes jsonb,
    feedback_forwarding_status boolean,
    identity_type text,
    mail_from_attributes jsonb,
    policies jsonb,
    verification_status text,
    verified_for_sending_status boolean
);


ALTER TABLE public.aws_ses_identities OWNER TO postgres;

--
-- Name: aws_ses_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ses_templates (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    template_name text,
    html text,
    subject text,
    text text,
    created_timestamp timestamp without time zone
);


ALTER TABLE public.aws_ses_templates OWNER TO postgres;

--
-- Name: aws_shield_attacks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_shield_attacks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    id text NOT NULL,
    attack_counters jsonb,
    attack_id text,
    attack_properties jsonb,
    end_time timestamp without time zone,
    mitigations jsonb,
    resource_arn text,
    start_time timestamp without time zone,
    sub_resources jsonb
);


ALTER TABLE public.aws_shield_attacks OWNER TO postgres;

--
-- Name: aws_shield_protection_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_shield_protection_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    aggregation text,
    members text[],
    pattern text,
    protection_group_id text,
    protection_group_arn text,
    resource_type text
);


ALTER TABLE public.aws_shield_protection_groups OWNER TO postgres;

--
-- Name: aws_shield_protections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_shield_protections (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    application_layer_automatic_response_configuration jsonb,
    health_check_ids text[],
    id text,
    name text,
    protection_arn text,
    resource_arn text
);


ALTER TABLE public.aws_shield_protections OWNER TO postgres;

--
-- Name: aws_shield_subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_shield_subscriptions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    subscription_limits jsonb,
    auto_renew text,
    end_time timestamp without time zone,
    limits jsonb,
    proactive_engagement_status text,
    start_time timestamp without time zone,
    subscription_arn text,
    time_commitment_in_seconds bigint
);


ALTER TABLE public.aws_shield_subscriptions OWNER TO postgres;

--
-- Name: aws_sns_subscriptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_sns_subscriptions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    delivery_policy jsonb,
    effective_delivery_policy jsonb,
    filter_policy jsonb,
    redrive_policy jsonb,
    endpoint text,
    owner text,
    protocol text,
    subscription_arn text,
    topic_arn text,
    confirmation_was_authenticated boolean,
    pending_confirmation boolean,
    raw_message_delivery boolean,
    subscription_role_arn text,
    unknown_fields jsonb
);


ALTER TABLE public.aws_sns_subscriptions OWNER TO postgres;

--
-- Name: aws_sns_topics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_sns_topics (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    delivery_policy jsonb,
    policy jsonb,
    effective_delivery_policy jsonb,
    display_name text,
    owner text,
    subscriptions_confirmed bigint,
    subscriptions_deleted bigint,
    subscriptions_pending bigint,
    kms_master_key_id text,
    fifo_topic boolean,
    content_based_deduplication boolean,
    unknown_fields jsonb
);


ALTER TABLE public.aws_sns_topics OWNER TO postgres;

--
-- Name: aws_sqs_queues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_sqs_queues (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    policy jsonb,
    redrive_policy jsonb,
    redrive_allow_policy jsonb,
    tags jsonb,
    url text,
    approximate_number_of_messages bigint,
    approximate_number_of_messages_delayed bigint,
    approximate_number_of_messages_not_visible bigint,
    created_timestamp bigint,
    delay_seconds bigint,
    last_modified_timestamp bigint,
    maximum_message_size bigint,
    message_retention_period bigint,
    receive_message_wait_time_seconds bigint,
    visibility_timeout bigint,
    kms_master_key_id text,
    kms_data_key_reuse_period_seconds bigint,
    sqs_managed_sse_enabled boolean,
    fifo_queue boolean,
    content_based_deduplication boolean,
    deduplication_scope text,
    fifo_throughput_limit text,
    unknown_fields jsonb
);


ALTER TABLE public.aws_sqs_queues OWNER TO postgres;

--
-- Name: aws_ssm_associations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_associations (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    association_id text NOT NULL,
    association_name text,
    association_version text,
    document_version text,
    instance_id text,
    last_execution_date timestamp without time zone,
    name text,
    overview jsonb,
    schedule_expression text,
    schedule_offset bigint,
    target_maps jsonb,
    targets jsonb
);


ALTER TABLE public.aws_ssm_associations OWNER TO postgres;

--
-- Name: aws_ssm_compliance_summary_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_compliance_summary_items (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    compliance_type text NOT NULL,
    compliant_summary jsonb,
    non_compliant_summary jsonb
);


ALTER TABLE public.aws_ssm_compliance_summary_items OWNER TO postgres;

--
-- Name: aws_ssm_document_versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_document_versions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    document_arn text NOT NULL,
    created_date timestamp without time zone,
    display_name text,
    document_format text,
    document_version text NOT NULL,
    is_default_version boolean,
    name text,
    review_status text,
    status text,
    status_information text,
    version_name text
);


ALTER TABLE public.aws_ssm_document_versions OWNER TO postgres;

--
-- Name: aws_ssm_documents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_documents (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    permissions jsonb,
    tags jsonb,
    approved_version text,
    attachments_information jsonb,
    author text,
    category text[],
    category_enum text[],
    created_date timestamp without time zone,
    default_version text,
    description text,
    display_name text,
    document_format text,
    document_type text,
    document_version text,
    hash text,
    hash_type text,
    latest_version text,
    name text,
    owner text,
    parameters jsonb,
    pending_review_version text,
    platform_types text[],
    requires jsonb,
    review_information jsonb,
    review_status text,
    schema_version text,
    sha1 text,
    status text,
    status_information text,
    target_type text,
    version_name text
);


ALTER TABLE public.aws_ssm_documents OWNER TO postgres;

--
-- Name: aws_ssm_instance_compliance_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_instance_compliance_items (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    id text NOT NULL,
    instance_arn text NOT NULL,
    compliance_type text,
    details jsonb,
    execution_summary jsonb,
    resource_id text,
    resource_type text,
    severity text,
    status text,
    title text
);


ALTER TABLE public.aws_ssm_instance_compliance_items OWNER TO postgres;

--
-- Name: aws_ssm_instance_patches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_instance_patches (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    kb_id text NOT NULL,
    classification text,
    installed_time timestamp without time zone,
    severity text,
    state text,
    title text,
    cve_ids text
);


ALTER TABLE public.aws_ssm_instance_patches OWNER TO postgres;

--
-- Name: aws_ssm_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    activation_id text,
    agent_version text,
    association_overview jsonb,
    association_status text,
    computer_name text,
    ip_address text,
    iam_role text,
    instance_id text,
    is_latest_version boolean,
    last_association_execution_date timestamp without time zone,
    last_ping_date_time timestamp without time zone,
    last_successful_association_execution_date timestamp without time zone,
    name text,
    ping_status text,
    platform_name text,
    platform_type text,
    platform_version text,
    registration_date timestamp without time zone,
    resource_type text,
    source_id text,
    source_type text
);


ALTER TABLE public.aws_ssm_instances OWNER TO postgres;

--
-- Name: aws_ssm_inventories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_inventories (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    id text NOT NULL,
    data jsonb
);


ALTER TABLE public.aws_ssm_inventories OWNER TO postgres;

--
-- Name: aws_ssm_inventory_schemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_inventory_schemas (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    type_name text NOT NULL,
    version text NOT NULL,
    attributes jsonb,
    display_name text
);


ALTER TABLE public.aws_ssm_inventory_schemas OWNER TO postgres;

--
-- Name: aws_ssm_parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_parameters (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    name text NOT NULL,
    allowed_pattern text,
    data_type text,
    description text,
    key_id text,
    last_modified_date timestamp without time zone,
    last_modified_user text,
    policies jsonb,
    tier text,
    type text,
    version bigint
);


ALTER TABLE public.aws_ssm_parameters OWNER TO postgres;

--
-- Name: aws_ssm_patch_baselines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_patch_baselines (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    baseline_id text NOT NULL,
    baseline_description text,
    baseline_name text,
    default_baseline boolean,
    operating_system text
);


ALTER TABLE public.aws_ssm_patch_baselines OWNER TO postgres;

--
-- Name: aws_ssm_sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssm_sessions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    details text,
    document_name text,
    end_date timestamp without time zone,
    max_session_duration text,
    output_url jsonb,
    owner text,
    reason text,
    session_id text NOT NULL,
    start_date timestamp without time zone,
    status text,
    target text
);


ALTER TABLE public.aws_ssm_sessions OWNER TO postgres;

--
-- Name: aws_ssoadmin_account_assignments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssoadmin_account_assignments (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    permission_set_arn text,
    principal_id text,
    principal_type text
);


ALTER TABLE public.aws_ssoadmin_account_assignments OWNER TO postgres;

--
-- Name: aws_ssoadmin_instances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssoadmin_instances (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    identity_store_id text,
    instance_arn text
);


ALTER TABLE public.aws_ssoadmin_instances OWNER TO postgres;

--
-- Name: aws_ssoadmin_permission_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_ssoadmin_permission_sets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    inline_policy jsonb,
    created_date timestamp without time zone,
    description text,
    name text,
    permission_set_arn text,
    relay_state text,
    session_duration text
);


ALTER TABLE public.aws_ssoadmin_permission_sets OWNER TO postgres;

--
-- Name: aws_stepfunctions_activities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_stepfunctions_activities (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    activity_arn text,
    creation_date timestamp without time zone,
    name text
);


ALTER TABLE public.aws_stepfunctions_activities OWNER TO postgres;

--
-- Name: aws_stepfunctions_executions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_stepfunctions_executions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    state_machine_arn text,
    execution_arn text,
    start_date timestamp without time zone,
    status text,
    cause text,
    error text,
    input text,
    input_details jsonb,
    map_run_arn text,
    name text,
    output text,
    output_details jsonb,
    stop_date timestamp without time zone,
    trace_header text
);


ALTER TABLE public.aws_stepfunctions_executions OWNER TO postgres;

--
-- Name: aws_stepfunctions_map_run_executions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_stepfunctions_map_run_executions (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    map_run_arn text,
    state_machine_arn text,
    execution_arn text,
    start_date timestamp without time zone,
    status text,
    cause text,
    error text,
    input text,
    input_details jsonb,
    name text,
    output text,
    output_details jsonb,
    stop_date timestamp without time zone,
    trace_header text
);


ALTER TABLE public.aws_stepfunctions_map_run_executions OWNER TO postgres;

--
-- Name: aws_stepfunctions_map_runs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_stepfunctions_map_runs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    state_machine_arn text,
    execution_arn text,
    execution_counts jsonb,
    item_counts jsonb,
    map_run_arn text,
    max_concurrency bigint,
    start_date timestamp without time zone,
    status text,
    tolerated_failure_count bigint,
    tolerated_failure_percentage double precision,
    stop_date timestamp without time zone
);


ALTER TABLE public.aws_stepfunctions_map_runs OWNER TO postgres;

--
-- Name: aws_stepfunctions_state_machines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_stepfunctions_state_machines (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    creation_date timestamp without time zone,
    definition text,
    name text,
    role_arn text,
    state_machine_arn text,
    type text,
    label text,
    logging_configuration jsonb,
    status text,
    tracing_configuration jsonb
);


ALTER TABLE public.aws_stepfunctions_state_machines OWNER TO postgres;

--
-- Name: aws_support_case_communications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_support_case_communications (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    attachment_set jsonb,
    body text,
    case_id text,
    submitted_by text,
    time_created text
);


ALTER TABLE public.aws_support_case_communications OWNER TO postgres;

--
-- Name: aws_support_cases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_support_cases (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    case_id text NOT NULL,
    category_code text,
    cc_email_addresses text[],
    display_id text,
    language text,
    recent_communications jsonb,
    service_code text,
    severity_code text,
    status text,
    subject text,
    submitted_by text,
    time_created text
);


ALTER TABLE public.aws_support_cases OWNER TO postgres;

--
-- Name: aws_support_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_support_services (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    language_code text NOT NULL,
    categories jsonb,
    code text NOT NULL,
    name text
);


ALTER TABLE public.aws_support_services OWNER TO postgres;

--
-- Name: aws_support_severity_levels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_support_severity_levels (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    language_code text NOT NULL,
    code text NOT NULL,
    name text
);


ALTER TABLE public.aws_support_severity_levels OWNER TO postgres;

--
-- Name: aws_support_trusted_advisor_check_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_support_trusted_advisor_check_results (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    language_code text NOT NULL,
    category_specific_summary jsonb,
    check_id text NOT NULL,
    flagged_resources jsonb,
    resources_summary jsonb,
    status text,
    "timestamp" text
);


ALTER TABLE public.aws_support_trusted_advisor_check_results OWNER TO postgres;

--
-- Name: aws_support_trusted_advisor_check_summaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_support_trusted_advisor_check_summaries (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    language_code text NOT NULL,
    category_specific_summary jsonb,
    check_id text NOT NULL,
    resources_summary jsonb,
    status text,
    "timestamp" text,
    has_flagged_resources boolean
);


ALTER TABLE public.aws_support_trusted_advisor_check_summaries OWNER TO postgres;

--
-- Name: aws_support_trusted_advisor_checks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_support_trusted_advisor_checks (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    language_code text NOT NULL,
    category text,
    description text,
    id text NOT NULL,
    metadata text[],
    name text
);


ALTER TABLE public.aws_support_trusted_advisor_checks OWNER TO postgres;

--
-- Name: aws_timestream_databases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_timestream_databases (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    database_name text,
    kms_key_id text,
    last_updated_time timestamp without time zone,
    table_count bigint
);


ALTER TABLE public.aws_timestream_databases OWNER TO postgres;

--
-- Name: aws_timestream_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_timestream_tables (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    creation_time timestamp without time zone,
    database_name text,
    last_updated_time timestamp without time zone,
    magnetic_store_write_properties jsonb,
    retention_properties jsonb,
    table_name text,
    table_status text
);


ALTER TABLE public.aws_timestream_tables OWNER TO postgres;

--
-- Name: aws_transfer_servers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_transfer_servers (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    certificate text,
    domain text,
    endpoint_details jsonb,
    endpoint_type text,
    host_key_fingerprint text,
    identity_provider_details jsonb,
    identity_provider_type text,
    logging_role text,
    post_authentication_login_banner text,
    pre_authentication_login_banner text,
    protocol_details jsonb,
    protocols text[],
    security_policy_name text,
    server_id text,
    state text,
    user_count bigint,
    workflow_details jsonb
);


ALTER TABLE public.aws_transfer_servers OWNER TO postgres;

--
-- Name: aws_waf_rule_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_waf_rule_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    rule_ids text[],
    rule_group_id text,
    metric_name text,
    name text
);


ALTER TABLE public.aws_waf_rule_groups OWNER TO postgres;

--
-- Name: aws_waf_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_waf_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    predicates jsonb,
    rule_id text,
    metric_name text,
    name text
);


ALTER TABLE public.aws_waf_rules OWNER TO postgres;

--
-- Name: aws_waf_subscribed_rule_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_waf_subscribed_rule_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    rule_group_id text NOT NULL,
    metric_name text,
    name text
);


ALTER TABLE public.aws_waf_subscribed_rule_groups OWNER TO postgres;

--
-- Name: aws_waf_web_acls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_waf_web_acls (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    tags jsonb,
    default_action jsonb,
    rules jsonb,
    web_acl_id text,
    metric_name text,
    name text,
    web_acl_arn text,
    logging_configuration jsonb
);


ALTER TABLE public.aws_waf_web_acls OWNER TO postgres;

--
-- Name: aws_wafregional_rate_based_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_wafregional_rate_based_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    match_predicates jsonb,
    rate_key text,
    rate_limit bigint,
    rule_id text,
    metric_name text,
    name text
);


ALTER TABLE public.aws_wafregional_rate_based_rules OWNER TO postgres;

--
-- Name: aws_wafregional_rule_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_wafregional_rule_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    rule_group_id text,
    metric_name text,
    name text
);


ALTER TABLE public.aws_wafregional_rule_groups OWNER TO postgres;

--
-- Name: aws_wafregional_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_wafregional_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    predicates jsonb,
    rule_id text,
    metric_name text,
    name text
);


ALTER TABLE public.aws_wafregional_rules OWNER TO postgres;

--
-- Name: aws_wafregional_web_acls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_wafregional_web_acls (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    resources_for_web_acl text[],
    default_action jsonb,
    rules jsonb,
    web_acl_id text,
    metric_name text,
    name text,
    web_acl_arn text
);


ALTER TABLE public.aws_wafregional_web_acls OWNER TO postgres;

--
-- Name: aws_wafv2_ipsets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_wafv2_ipsets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    addresses inet[],
    tags jsonb,
    arn text NOT NULL,
    ip_address_version text,
    id text,
    name text,
    description text
);


ALTER TABLE public.aws_wafv2_ipsets OWNER TO postgres;

--
-- Name: aws_wafv2_managed_rule_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_wafv2_managed_rule_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    scope text NOT NULL,
    properties jsonb,
    description text,
    name text NOT NULL,
    vendor_name text NOT NULL,
    versioning_supported boolean
);


ALTER TABLE public.aws_wafv2_managed_rule_groups OWNER TO postgres;

--
-- Name: aws_wafv2_regex_pattern_sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_wafv2_regex_pattern_sets (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    description text,
    id text,
    name text,
    regular_expression_list jsonb
);


ALTER TABLE public.aws_wafv2_regex_pattern_sets OWNER TO postgres;

--
-- Name: aws_wafv2_rule_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_wafv2_rule_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    arn text NOT NULL,
    policy jsonb,
    capacity bigint,
    id text,
    name text,
    visibility_config jsonb,
    available_labels jsonb,
    consumed_labels jsonb,
    custom_response_bodies jsonb,
    description text,
    label_namespace text,
    rules jsonb
);


ALTER TABLE public.aws_wafv2_rule_groups OWNER TO postgres;

--
-- Name: aws_wafv2_web_acls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_wafv2_web_acls (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    tags jsonb,
    resources_for_web_acl text[],
    arn text NOT NULL,
    default_action jsonb,
    id text,
    name text,
    visibility_config jsonb,
    capacity bigint,
    captcha_config jsonb,
    challenge_config jsonb,
    custom_response_bodies jsonb,
    description text,
    label_namespace text,
    managed_by_firewall_manager boolean,
    post_process_firewall_manager_rule_groups jsonb,
    pre_process_firewall_manager_rule_groups jsonb,
    rules jsonb,
    token_domains text[],
    logging_configuration jsonb
);


ALTER TABLE public.aws_wafv2_web_acls OWNER TO postgres;

--
-- Name: aws_workspaces_directories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_workspaces_directories (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    alias text,
    certificate_based_auth_properties jsonb,
    customer_user_name text,
    directory_id text,
    directory_name text,
    directory_type text,
    dns_ip_addresses text[],
    iam_role_id text,
    ip_group_ids text[],
    registration_code text,
    saml_properties jsonb,
    selfservice_permissions jsonb,
    state text,
    subnet_ids text[],
    tenancy text,
    workspace_access_properties jsonb,
    workspace_creation_properties jsonb,
    workspace_security_group_id text
);


ALTER TABLE public.aws_workspaces_directories OWNER TO postgres;

--
-- Name: aws_workspaces_workspaces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_workspaces_workspaces (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    arn text NOT NULL,
    bundle_id text,
    computer_name text,
    directory_id text,
    error_code text,
    error_message text,
    ip_address text,
    modification_states jsonb,
    related_workspaces jsonb,
    root_volume_encryption_enabled boolean,
    state text,
    subnet_id text,
    user_name text,
    user_volume_encryption_enabled boolean,
    volume_encryption_key text,
    workspace_id text,
    workspace_properties jsonb
);


ALTER TABLE public.aws_workspaces_workspaces OWNER TO postgres;

--
-- Name: aws_xray_encryption_configs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_xray_encryption_configs (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    key_id text,
    status text,
    type text
);


ALTER TABLE public.aws_xray_encryption_configs OWNER TO postgres;

--
-- Name: aws_xray_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_xray_groups (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    filter_expression text,
    group_arn text,
    group_name text,
    insights_configuration jsonb
);


ALTER TABLE public.aws_xray_groups OWNER TO postgres;

--
-- Name: aws_xray_resource_policies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_xray_resource_policies (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text NOT NULL,
    region text NOT NULL,
    policy_name text NOT NULL,
    policy_revision_id text NOT NULL,
    last_updated_time timestamp without time zone,
    policy_document text
);


ALTER TABLE public.aws_xray_resource_policies OWNER TO postgres;

--
-- Name: aws_xray_sampling_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aws_xray_sampling_rules (
    _cq_source_name text,
    _cq_sync_time timestamp without time zone,
    _cq_id uuid NOT NULL,
    _cq_parent_id uuid,
    account_id text,
    region text,
    arn text NOT NULL,
    tags jsonb,
    created_at timestamp without time zone,
    modified_at timestamp without time zone,
    sampling_rule jsonb
);


ALTER TABLE public.aws_xray_sampling_rules OWNER TO postgres;

--
-- Name: view_aws_apigateway_method_settings; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_aws_apigateway_method_settings AS
 SELECT s.arn,
    s.rest_api_arn,
    s.stage_name,
    s.tracing_enabled AS stage_data_trace_enabled,
    s.cache_cluster_enabled AS stage_caching_enabled,
    s.web_acl_arn AS waf,
    s.client_certificate_id AS cert,
    jsonb_each_text.key AS method,
    ((((jsonb_each_text.value)::json -> 'DataTraceEnabled'::text))::text)::boolean AS data_trace_enabled,
    ((((jsonb_each_text.value)::json -> 'CachingEnabled'::text))::text)::boolean AS caching_enabled,
    ((((jsonb_each_text.value)::json -> 'CacheDataEncrypted'::text))::text)::boolean AS cache_data_encrypted,
    (((jsonb_each_text.value)::json -> 'LoggingLevel'::text))::text AS logging_level,
    r.account_id
   FROM public.aws_apigateway_rest_api_stages s,
    public.aws_apigateway_rest_apis r,
    LATERAL jsonb_each_text(s.method_settings) jsonb_each_text(key, value)
  WHERE (s.rest_api_arn = r.arn);


ALTER TABLE public.view_aws_apigateway_method_settings OWNER TO postgres;

--
-- Name: view_aws_log_metric_filter_and_alarm; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_aws_log_metric_filter_and_alarm AS
 WITH af AS (
         SELECT DISTINCT a.arn,
            a.actions_enabled,
            a.alarm_actions,
            (((m.value -> 'MetricStat'::text) -> 'Metric'::text) ->> 'MetricName'::text) AS metric_name
           FROM public.aws_cloudwatch_alarms a,
            LATERAL jsonb_array_elements(a.metrics) m(value)
        )
 SELECT t.account_id,
    t.region,
    t.cloud_watch_logs_log_group_arn,
    mf.filter_pattern AS pattern
   FROM ((((public.aws_cloudtrail_trails t
     JOIN public.aws_cloudtrail_trail_event_selectors tes ON ((t.arn = tes.trail_arn)))
     JOIN public.aws_cloudwatchlogs_metric_filters mf ON ((mf.log_group_name = t.cloudwatch_logs_log_group_name)))
     JOIN af ON ((mf.filter_name = af.metric_name)))
     JOIN public.aws_sns_subscriptions ss ON ((ss.topic_arn = ANY (af.alarm_actions))))
  WHERE ((t.is_multi_region_trail = true) AND (((t.status ->> 'IsLogging'::text))::boolean = true) AND (tes.include_management_events = true) AND (tes.read_write_type = 'All'::text) AND (ss.arn ~~ 'aws:arn:%'::text));


ALTER TABLE public.view_aws_log_metric_filter_and_alarm OWNER TO postgres;

--
-- Name: view_aws_nacl_allow_ingress_rules; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_aws_nacl_allow_ingress_rules AS
 WITH rules AS (
         SELECT aena.arn,
            aena.account_id,
            (((jsonb_array_elements(aena.entries) -> 'PortRange'::text) ->> 'From'::text))::integer AS port_range_from,
            (((jsonb_array_elements(aena.entries) -> 'PortRange'::text) ->> 'To'::text))::integer AS port_range_to,
            (jsonb_array_elements(aena.entries) ->> 'Protocol'::text) AS protocol,
            (jsonb_array_elements(aena.entries) ->> 'CidrBlock'::text) AS cidr_block,
            (jsonb_array_elements(aena.entries) ->> 'Ipv6CidrBlock'::text) AS ipv6_cidr_block,
            (jsonb_array_elements(aena.entries) ->> 'Egress'::text) AS egress,
            (jsonb_array_elements(aena.entries) ->> 'RuleAction'::text) AS rule_action
           FROM public.aws_ec2_network_acls aena
        )
 SELECT rules.arn,
    rules.account_id,
    rules.port_range_from,
    rules.port_range_to,
    rules.protocol,
    rules.cidr_block,
    rules.ipv6_cidr_block
   FROM rules
  WHERE ((rules.egress IS DISTINCT FROM 'true'::text) AND (rules.rule_action = 'allow'::text));


ALTER TABLE public.view_aws_nacl_allow_ingress_rules OWNER TO postgres;

--
-- Name: view_aws_security_group_egress_rules; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_aws_security_group_egress_rules AS
 SELECT aws_ec2_security_groups.account_id,
    aws_ec2_security_groups.region,
    aws_ec2_security_groups.group_name,
    aws_ec2_security_groups.arn,
    aws_ec2_security_groups.group_id AS id,
    aws_ec2_security_groups.vpc_id,
    ((i.value ->> 'FromPort'::text))::integer AS from_port,
    ((i.value ->> 'ToPort'::text))::integer AS to_port,
    (i.value ->> 'IpProtocol'::text) AS ip_protocol,
    (ip_ranges.value ->> 'CidrIp'::text) AS ip,
    (ip6_ranges.value ->> 'CidrIpv6'::text) AS ip6
   FROM public.aws_ec2_security_groups,
    ((LATERAL jsonb_array_elements(aws_ec2_security_groups.ip_permissions_egress) i(value)
     LEFT JOIN LATERAL jsonb_array_elements((i.value -> 'IpRanges'::text)) ip_ranges(value) ON (true))
     LEFT JOIN LATERAL jsonb_array_elements((i.value -> 'Ipv6Ranges'::text)) ip6_ranges(value) ON (true));


ALTER TABLE public.view_aws_security_group_egress_rules OWNER TO postgres;

--
-- Name: view_aws_security_group_ingress_rules; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_aws_security_group_ingress_rules AS
 SELECT aws_ec2_security_groups.account_id,
    aws_ec2_security_groups.region,
    aws_ec2_security_groups.group_name,
    aws_ec2_security_groups.arn,
    aws_ec2_security_groups.group_id AS id,
    aws_ec2_security_groups.vpc_id,
    ((i.value ->> 'FromPort'::text))::integer AS from_port,
    ((i.value ->> 'ToPort'::text))::integer AS to_port,
    (i.value ->> 'IpProtocol'::text) AS ip_protocol,
    (ip_ranges.value ->> 'CidrIp'::text) AS ip,
    (ip6_ranges.value ->> 'CidrIpv6'::text) AS ip6
   FROM public.aws_ec2_security_groups,
    ((LATERAL jsonb_array_elements(aws_ec2_security_groups.ip_permissions) i(value)
     LEFT JOIN LATERAL jsonb_array_elements((i.value -> 'IpRanges'::text)) ip_ranges(value) ON (true))
     LEFT JOIN LATERAL jsonb_array_elements((i.value -> 'Ipv6Ranges'::text)) ip6_ranges(value) ON (true));


ALTER TABLE public.view_aws_security_group_ingress_rules OWNER TO postgres;

--
-- Name: aws_accessanalyzer_analyzer_archive_rules aws_accessanalyzer_analyzer_archive_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_accessanalyzer_analyzer_archive_rules
    ADD CONSTRAINT aws_accessanalyzer_analyzer_archive_rules_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_accessanalyzer_analyzer_findings aws_accessanalyzer_analyzer_findings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_accessanalyzer_analyzer_findings
    ADD CONSTRAINT aws_accessanalyzer_analyzer_findings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_accessanalyzer_analyzer_findings aws_accessanalyzer_analyzer_findings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_accessanalyzer_analyzer_findings
    ADD CONSTRAINT aws_accessanalyzer_analyzer_findings_cqpk PRIMARY KEY (arn);


--
-- Name: aws_accessanalyzer_analyzers aws_accessanalyzer_analyzers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_accessanalyzer_analyzers
    ADD CONSTRAINT aws_accessanalyzer_analyzers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_accessanalyzer_analyzers aws_accessanalyzer_analyzers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_accessanalyzer_analyzers
    ADD CONSTRAINT aws_accessanalyzer_analyzers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_account_alternate_contacts aws_account_alternate_contacts__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_account_alternate_contacts
    ADD CONSTRAINT aws_account_alternate_contacts__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_account_alternate_contacts aws_account_alternate_contacts_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_account_alternate_contacts
    ADD CONSTRAINT aws_account_alternate_contacts_cqpk PRIMARY KEY (account_id, alternate_contact_type);


--
-- Name: aws_account_contacts aws_account_contacts__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_account_contacts
    ADD CONSTRAINT aws_account_contacts__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_account_contacts aws_account_contacts_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_account_contacts
    ADD CONSTRAINT aws_account_contacts_cqpk PRIMARY KEY (account_id);


--
-- Name: aws_acm_certificates aws_acm_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_acm_certificates
    ADD CONSTRAINT aws_acm_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_acm_certificates aws_acm_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_acm_certificates
    ADD CONSTRAINT aws_acm_certificates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_amp_rule_groups_namespaces aws_amp_rule_groups_namespaces__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_amp_rule_groups_namespaces
    ADD CONSTRAINT aws_amp_rule_groups_namespaces__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_amp_rule_groups_namespaces aws_amp_rule_groups_namespaces_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_amp_rule_groups_namespaces
    ADD CONSTRAINT aws_amp_rule_groups_namespaces_cqpk PRIMARY KEY (arn);


--
-- Name: aws_amp_workspaces aws_amp_workspaces__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_amp_workspaces
    ADD CONSTRAINT aws_amp_workspaces__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_amp_workspaces aws_amp_workspaces_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_amp_workspaces
    ADD CONSTRAINT aws_amp_workspaces_cqpk PRIMARY KEY (arn);


--
-- Name: aws_amplify_apps aws_amplify_apps__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_amplify_apps
    ADD CONSTRAINT aws_amplify_apps__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_amplify_apps aws_amplify_apps_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_amplify_apps
    ADD CONSTRAINT aws_amplify_apps_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apigateway_api_keys aws_apigateway_api_keys__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_api_keys
    ADD CONSTRAINT aws_apigateway_api_keys__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_api_keys aws_apigateway_api_keys_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_api_keys
    ADD CONSTRAINT aws_apigateway_api_keys_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apigateway_client_certificates aws_apigateway_client_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_client_certificates
    ADD CONSTRAINT aws_apigateway_client_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_client_certificates aws_apigateway_client_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_client_certificates
    ADD CONSTRAINT aws_apigateway_client_certificates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apigateway_domain_name_base_path_mappings aws_apigateway_domain_name_base_path_mappings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_domain_name_base_path_mappings
    ADD CONSTRAINT aws_apigateway_domain_name_base_path_mappings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_domain_name_base_path_mappings aws_apigateway_domain_name_base_path_mappings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_domain_name_base_path_mappings
    ADD CONSTRAINT aws_apigateway_domain_name_base_path_mappings_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_domain_names aws_apigateway_domain_names__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_domain_names
    ADD CONSTRAINT aws_apigateway_domain_names__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_domain_names aws_apigateway_domain_names_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_domain_names
    ADD CONSTRAINT aws_apigateway_domain_names_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apigateway_rest_api_authorizers aws_apigateway_rest_api_authorizers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_authorizers
    ADD CONSTRAINT aws_apigateway_rest_api_authorizers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_authorizers aws_apigateway_rest_api_authorizers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_authorizers
    ADD CONSTRAINT aws_apigateway_rest_api_authorizers_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_deployments aws_apigateway_rest_api_deployments__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_deployments
    ADD CONSTRAINT aws_apigateway_rest_api_deployments__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_deployments aws_apigateway_rest_api_deployments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_deployments
    ADD CONSTRAINT aws_apigateway_rest_api_deployments_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_documentation_parts aws_apigateway_rest_api_documentation_parts__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_documentation_parts
    ADD CONSTRAINT aws_apigateway_rest_api_documentation_parts__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_documentation_parts aws_apigateway_rest_api_documentation_parts_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_documentation_parts
    ADD CONSTRAINT aws_apigateway_rest_api_documentation_parts_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_documentation_versions aws_apigateway_rest_api_documentation_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_documentation_versions
    ADD CONSTRAINT aws_apigateway_rest_api_documentation_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_documentation_versions aws_apigateway_rest_api_documentation_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_documentation_versions
    ADD CONSTRAINT aws_apigateway_rest_api_documentation_versions_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_gateway_responses aws_apigateway_rest_api_gateway_responses__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_gateway_responses
    ADD CONSTRAINT aws_apigateway_rest_api_gateway_responses__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_gateway_responses aws_apigateway_rest_api_gateway_responses_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_gateway_responses
    ADD CONSTRAINT aws_apigateway_rest_api_gateway_responses_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_models aws_apigateway_rest_api_models__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_models
    ADD CONSTRAINT aws_apigateway_rest_api_models__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_models aws_apigateway_rest_api_models_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_models
    ADD CONSTRAINT aws_apigateway_rest_api_models_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_request_validators aws_apigateway_rest_api_request_validators__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_request_validators
    ADD CONSTRAINT aws_apigateway_rest_api_request_validators__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_request_validators aws_apigateway_rest_api_request_validators_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_request_validators
    ADD CONSTRAINT aws_apigateway_rest_api_request_validators_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_resource_method_integrations aws_apigateway_rest_api_resource_method_integrations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_resource_method_integrations
    ADD CONSTRAINT aws_apigateway_rest_api_resource_method_integrations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_resource_method_integrations aws_apigateway_rest_api_resource_method_integrations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_resource_method_integrations
    ADD CONSTRAINT aws_apigateway_rest_api_resource_method_integrations_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_resource_methods aws_apigateway_rest_api_resource_methods__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_resource_methods
    ADD CONSTRAINT aws_apigateway_rest_api_resource_methods__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_resource_methods aws_apigateway_rest_api_resource_methods_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_resource_methods
    ADD CONSTRAINT aws_apigateway_rest_api_resource_methods_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_resources aws_apigateway_rest_api_resources__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_resources
    ADD CONSTRAINT aws_apigateway_rest_api_resources__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_resources aws_apigateway_rest_api_resources_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_resources
    ADD CONSTRAINT aws_apigateway_rest_api_resources_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_api_stages aws_apigateway_rest_api_stages__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_stages
    ADD CONSTRAINT aws_apigateway_rest_api_stages__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_api_stages aws_apigateway_rest_api_stages_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_api_stages
    ADD CONSTRAINT aws_apigateway_rest_api_stages_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_rest_apis aws_apigateway_rest_apis__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_apis
    ADD CONSTRAINT aws_apigateway_rest_apis__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_rest_apis aws_apigateway_rest_apis_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_rest_apis
    ADD CONSTRAINT aws_apigateway_rest_apis_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apigateway_usage_plan_keys aws_apigateway_usage_plan_keys__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_usage_plan_keys
    ADD CONSTRAINT aws_apigateway_usage_plan_keys__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_usage_plan_keys aws_apigateway_usage_plan_keys_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_usage_plan_keys
    ADD CONSTRAINT aws_apigateway_usage_plan_keys_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_usage_plans aws_apigateway_usage_plans__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_usage_plans
    ADD CONSTRAINT aws_apigateway_usage_plans__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_usage_plans aws_apigateway_usage_plans_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_usage_plans
    ADD CONSTRAINT aws_apigateway_usage_plans_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigateway_vpc_links aws_apigateway_vpc_links__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_vpc_links
    ADD CONSTRAINT aws_apigateway_vpc_links__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigateway_vpc_links aws_apigateway_vpc_links_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigateway_vpc_links
    ADD CONSTRAINT aws_apigateway_vpc_links_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_api_authorizers aws_apigatewayv2_api_authorizers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_authorizers
    ADD CONSTRAINT aws_apigatewayv2_api_authorizers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_api_authorizers aws_apigatewayv2_api_authorizers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_authorizers
    ADD CONSTRAINT aws_apigatewayv2_api_authorizers_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_api_deployments aws_apigatewayv2_api_deployments__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_deployments
    ADD CONSTRAINT aws_apigatewayv2_api_deployments__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_api_deployments aws_apigatewayv2_api_deployments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_deployments
    ADD CONSTRAINT aws_apigatewayv2_api_deployments_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_api_integration_responses aws_apigatewayv2_api_integration_responses__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_integration_responses
    ADD CONSTRAINT aws_apigatewayv2_api_integration_responses__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_api_integration_responses aws_apigatewayv2_api_integration_responses_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_integration_responses
    ADD CONSTRAINT aws_apigatewayv2_api_integration_responses_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_api_integrations aws_apigatewayv2_api_integrations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_integrations
    ADD CONSTRAINT aws_apigatewayv2_api_integrations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_api_integrations aws_apigatewayv2_api_integrations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_integrations
    ADD CONSTRAINT aws_apigatewayv2_api_integrations_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_api_models aws_apigatewayv2_api_models__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_models
    ADD CONSTRAINT aws_apigatewayv2_api_models__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_api_models aws_apigatewayv2_api_models_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_models
    ADD CONSTRAINT aws_apigatewayv2_api_models_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_api_route_responses aws_apigatewayv2_api_route_responses__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_route_responses
    ADD CONSTRAINT aws_apigatewayv2_api_route_responses__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_api_route_responses aws_apigatewayv2_api_route_responses_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_route_responses
    ADD CONSTRAINT aws_apigatewayv2_api_route_responses_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_api_routes aws_apigatewayv2_api_routes__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_routes
    ADD CONSTRAINT aws_apigatewayv2_api_routes__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_api_routes aws_apigatewayv2_api_routes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_routes
    ADD CONSTRAINT aws_apigatewayv2_api_routes_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_api_stages aws_apigatewayv2_api_stages__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_stages
    ADD CONSTRAINT aws_apigatewayv2_api_stages__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_api_stages aws_apigatewayv2_api_stages_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_api_stages
    ADD CONSTRAINT aws_apigatewayv2_api_stages_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_apis aws_apigatewayv2_apis__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_apis
    ADD CONSTRAINT aws_apigatewayv2_apis__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_apis aws_apigatewayv2_apis_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_apis
    ADD CONSTRAINT aws_apigatewayv2_apis_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_domain_name_rest_api_mappings aws_apigatewayv2_domain_name_rest_api_mappings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_domain_name_rest_api_mappings
    ADD CONSTRAINT aws_apigatewayv2_domain_name_rest_api_mappings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_domain_name_rest_api_mappings aws_apigatewayv2_domain_name_rest_api_mappings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_domain_name_rest_api_mappings
    ADD CONSTRAINT aws_apigatewayv2_domain_name_rest_api_mappings_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_domain_names aws_apigatewayv2_domain_names__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_domain_names
    ADD CONSTRAINT aws_apigatewayv2_domain_names__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_domain_names aws_apigatewayv2_domain_names_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_domain_names
    ADD CONSTRAINT aws_apigatewayv2_domain_names_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_apigatewayv2_vpc_links aws_apigatewayv2_vpc_links__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_vpc_links
    ADD CONSTRAINT aws_apigatewayv2_vpc_links__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apigatewayv2_vpc_links aws_apigatewayv2_vpc_links_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apigatewayv2_vpc_links
    ADD CONSTRAINT aws_apigatewayv2_vpc_links_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_applicationautoscaling_policies aws_applicationautoscaling_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_applicationautoscaling_policies
    ADD CONSTRAINT aws_applicationautoscaling_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_applicationautoscaling_policies aws_applicationautoscaling_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_applicationautoscaling_policies
    ADD CONSTRAINT aws_applicationautoscaling_policies_cqpk PRIMARY KEY (arn);


--
-- Name: aws_applicationautoscaling_scalable_targets aws_applicationautoscaling_scalable_targets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_applicationautoscaling_scalable_targets
    ADD CONSTRAINT aws_applicationautoscaling_scalable_targets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_applicationautoscaling_scalable_targets aws_applicationautoscaling_scalable_targets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_applicationautoscaling_scalable_targets
    ADD CONSTRAINT aws_applicationautoscaling_scalable_targets_cqpk PRIMARY KEY (account_id, region, resource_id);


--
-- Name: aws_applicationautoscaling_scaling_activities aws_applicationautoscaling_scaling_activities__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_applicationautoscaling_scaling_activities
    ADD CONSTRAINT aws_applicationautoscaling_scaling_activities__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_applicationautoscaling_scaling_activities aws_applicationautoscaling_scaling_activities_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_applicationautoscaling_scaling_activities
    ADD CONSTRAINT aws_applicationautoscaling_scaling_activities_cqpk PRIMARY KEY (account_id, region, resource_id);


--
-- Name: aws_applicationautoscaling_scheduled_actions aws_applicationautoscaling_scheduled_actions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_applicationautoscaling_scheduled_actions
    ADD CONSTRAINT aws_applicationautoscaling_scheduled_actions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_applicationautoscaling_scheduled_actions aws_applicationautoscaling_scheduled_actions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_applicationautoscaling_scheduled_actions
    ADD CONSTRAINT aws_applicationautoscaling_scheduled_actions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apprunner_auto_scaling_configurations aws_apprunner_auto_scaling_configurations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_auto_scaling_configurations
    ADD CONSTRAINT aws_apprunner_auto_scaling_configurations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apprunner_auto_scaling_configurations aws_apprunner_auto_scaling_configurations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_auto_scaling_configurations
    ADD CONSTRAINT aws_apprunner_auto_scaling_configurations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apprunner_connections aws_apprunner_connections__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_connections
    ADD CONSTRAINT aws_apprunner_connections__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apprunner_connections aws_apprunner_connections_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_connections
    ADD CONSTRAINT aws_apprunner_connections_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apprunner_custom_domains aws_apprunner_custom_domains_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_custom_domains
    ADD CONSTRAINT aws_apprunner_custom_domains_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_apprunner_observability_configurations aws_apprunner_observability_configurations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_observability_configurations
    ADD CONSTRAINT aws_apprunner_observability_configurations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apprunner_observability_configurations aws_apprunner_observability_configurations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_observability_configurations
    ADD CONSTRAINT aws_apprunner_observability_configurations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apprunner_operations aws_apprunner_operations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_operations
    ADD CONSTRAINT aws_apprunner_operations_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_apprunner_services aws_apprunner_services__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_services
    ADD CONSTRAINT aws_apprunner_services__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apprunner_services aws_apprunner_services_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_services
    ADD CONSTRAINT aws_apprunner_services_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apprunner_vpc_connectors aws_apprunner_vpc_connectors__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_vpc_connectors
    ADD CONSTRAINT aws_apprunner_vpc_connectors__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apprunner_vpc_connectors aws_apprunner_vpc_connectors_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_vpc_connectors
    ADD CONSTRAINT aws_apprunner_vpc_connectors_cqpk PRIMARY KEY (arn);


--
-- Name: aws_apprunner_vpc_ingress_connections aws_apprunner_vpc_ingress_connections__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_vpc_ingress_connections
    ADD CONSTRAINT aws_apprunner_vpc_ingress_connections__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_apprunner_vpc_ingress_connections aws_apprunner_vpc_ingress_connections_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_apprunner_vpc_ingress_connections
    ADD CONSTRAINT aws_apprunner_vpc_ingress_connections_cqpk PRIMARY KEY (arn);


--
-- Name: aws_appstream_app_blocks aws_appstream_app_blocks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_app_blocks
    ADD CONSTRAINT aws_appstream_app_blocks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_app_blocks aws_appstream_app_blocks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_app_blocks
    ADD CONSTRAINT aws_appstream_app_blocks_cqpk PRIMARY KEY (arn);


--
-- Name: aws_appstream_application_fleet_associations aws_appstream_application_fleet_associations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_application_fleet_associations
    ADD CONSTRAINT aws_appstream_application_fleet_associations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_application_fleet_associations aws_appstream_application_fleet_associations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_application_fleet_associations
    ADD CONSTRAINT aws_appstream_application_fleet_associations_cqpk PRIMARY KEY (application_arn, fleet_name);


--
-- Name: aws_appstream_applications aws_appstream_applications__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_applications
    ADD CONSTRAINT aws_appstream_applications__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_applications aws_appstream_applications_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_applications
    ADD CONSTRAINT aws_appstream_applications_cqpk PRIMARY KEY (arn);


--
-- Name: aws_appstream_directory_configs aws_appstream_directory_configs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_directory_configs
    ADD CONSTRAINT aws_appstream_directory_configs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_directory_configs aws_appstream_directory_configs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_directory_configs
    ADD CONSTRAINT aws_appstream_directory_configs_cqpk PRIMARY KEY (account_id, region, directory_name);


--
-- Name: aws_appstream_fleets aws_appstream_fleets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_fleets
    ADD CONSTRAINT aws_appstream_fleets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_fleets aws_appstream_fleets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_fleets
    ADD CONSTRAINT aws_appstream_fleets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_appstream_image_builders aws_appstream_image_builders__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_image_builders
    ADD CONSTRAINT aws_appstream_image_builders__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_image_builders aws_appstream_image_builders_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_image_builders
    ADD CONSTRAINT aws_appstream_image_builders_cqpk PRIMARY KEY (arn);


--
-- Name: aws_appstream_images aws_appstream_images__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_images
    ADD CONSTRAINT aws_appstream_images__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_images aws_appstream_images_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_images
    ADD CONSTRAINT aws_appstream_images_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_appstream_stack_entitlements aws_appstream_stack_entitlements__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_stack_entitlements
    ADD CONSTRAINT aws_appstream_stack_entitlements__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_stack_entitlements aws_appstream_stack_entitlements_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_stack_entitlements
    ADD CONSTRAINT aws_appstream_stack_entitlements_cqpk PRIMARY KEY (account_id, region, stack_name, name);


--
-- Name: aws_appstream_stack_user_associations aws_appstream_stack_user_associations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_stack_user_associations
    ADD CONSTRAINT aws_appstream_stack_user_associations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_stack_user_associations aws_appstream_stack_user_associations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_stack_user_associations
    ADD CONSTRAINT aws_appstream_stack_user_associations_cqpk PRIMARY KEY (account_id, region, stack_name, user_name, authentication_type);


--
-- Name: aws_appstream_stacks aws_appstream_stacks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_stacks
    ADD CONSTRAINT aws_appstream_stacks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_stacks aws_appstream_stacks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_stacks
    ADD CONSTRAINT aws_appstream_stacks_cqpk PRIMARY KEY (arn);


--
-- Name: aws_appstream_usage_report_subscriptions aws_appstream_usage_report_subscriptions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_usage_report_subscriptions
    ADD CONSTRAINT aws_appstream_usage_report_subscriptions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_usage_report_subscriptions aws_appstream_usage_report_subscriptions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_usage_report_subscriptions
    ADD CONSTRAINT aws_appstream_usage_report_subscriptions_cqpk PRIMARY KEY (account_id, region, s3_bucket_name);


--
-- Name: aws_appstream_users aws_appstream_users__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_users
    ADD CONSTRAINT aws_appstream_users__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appstream_users aws_appstream_users_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appstream_users
    ADD CONSTRAINT aws_appstream_users_cqpk PRIMARY KEY (arn);


--
-- Name: aws_appsync_graphql_apis aws_appsync_graphql_apis__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appsync_graphql_apis
    ADD CONSTRAINT aws_appsync_graphql_apis__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_appsync_graphql_apis aws_appsync_graphql_apis_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_appsync_graphql_apis
    ADD CONSTRAINT aws_appsync_graphql_apis_cqpk PRIMARY KEY (arn);


--
-- Name: aws_athena_data_catalog_database_tables aws_athena_data_catalog_database_tables__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_data_catalog_database_tables
    ADD CONSTRAINT aws_athena_data_catalog_database_tables__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_athena_data_catalog_database_tables aws_athena_data_catalog_database_tables_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_data_catalog_database_tables
    ADD CONSTRAINT aws_athena_data_catalog_database_tables_cqpk PRIMARY KEY (data_catalog_arn, data_catalog_database_name, name);


--
-- Name: aws_athena_data_catalog_databases aws_athena_data_catalog_databases__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_data_catalog_databases
    ADD CONSTRAINT aws_athena_data_catalog_databases__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_athena_data_catalog_databases aws_athena_data_catalog_databases_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_data_catalog_databases
    ADD CONSTRAINT aws_athena_data_catalog_databases_cqpk PRIMARY KEY (data_catalog_arn, name);


--
-- Name: aws_athena_data_catalogs aws_athena_data_catalogs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_data_catalogs
    ADD CONSTRAINT aws_athena_data_catalogs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_athena_data_catalogs aws_athena_data_catalogs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_data_catalogs
    ADD CONSTRAINT aws_athena_data_catalogs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_athena_work_group_named_queries aws_athena_work_group_named_queries_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_work_group_named_queries
    ADD CONSTRAINT aws_athena_work_group_named_queries_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_athena_work_group_prepared_statements aws_athena_work_group_prepared_statements_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_work_group_prepared_statements
    ADD CONSTRAINT aws_athena_work_group_prepared_statements_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_athena_work_group_query_executions aws_athena_work_group_query_executions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_work_group_query_executions
    ADD CONSTRAINT aws_athena_work_group_query_executions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_athena_work_groups aws_athena_work_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_work_groups
    ADD CONSTRAINT aws_athena_work_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_athena_work_groups aws_athena_work_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_athena_work_groups
    ADD CONSTRAINT aws_athena_work_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_autoscaling_group_lifecycle_hooks aws_autoscaling_group_lifecycle_hooks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_group_lifecycle_hooks
    ADD CONSTRAINT aws_autoscaling_group_lifecycle_hooks_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_autoscaling_group_scaling_policies aws_autoscaling_group_scaling_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_group_scaling_policies
    ADD CONSTRAINT aws_autoscaling_group_scaling_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_autoscaling_group_scaling_policies aws_autoscaling_group_scaling_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_group_scaling_policies
    ADD CONSTRAINT aws_autoscaling_group_scaling_policies_cqpk PRIMARY KEY (arn);


--
-- Name: aws_autoscaling_groups aws_autoscaling_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_groups
    ADD CONSTRAINT aws_autoscaling_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_autoscaling_groups aws_autoscaling_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_groups
    ADD CONSTRAINT aws_autoscaling_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_autoscaling_launch_configurations aws_autoscaling_launch_configurations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_launch_configurations
    ADD CONSTRAINT aws_autoscaling_launch_configurations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_autoscaling_launch_configurations aws_autoscaling_launch_configurations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_launch_configurations
    ADD CONSTRAINT aws_autoscaling_launch_configurations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_autoscaling_plan_resources aws_autoscaling_plan_resources__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_plan_resources
    ADD CONSTRAINT aws_autoscaling_plan_resources__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_autoscaling_plan_resources aws_autoscaling_plan_resources_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_plan_resources
    ADD CONSTRAINT aws_autoscaling_plan_resources_cqpk PRIMARY KEY (account_id, region, resource_id, scaling_plan_name);


--
-- Name: aws_autoscaling_plans aws_autoscaling_plans__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_plans
    ADD CONSTRAINT aws_autoscaling_plans__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_autoscaling_plans aws_autoscaling_plans_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_plans
    ADD CONSTRAINT aws_autoscaling_plans_cqpk PRIMARY KEY (account_id, region, scaling_plan_name);


--
-- Name: aws_autoscaling_scheduled_actions aws_autoscaling_scheduled_actions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_scheduled_actions
    ADD CONSTRAINT aws_autoscaling_scheduled_actions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_autoscaling_scheduled_actions aws_autoscaling_scheduled_actions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_autoscaling_scheduled_actions
    ADD CONSTRAINT aws_autoscaling_scheduled_actions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_availability_zones aws_availability_zones__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_availability_zones
    ADD CONSTRAINT aws_availability_zones__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_availability_zones aws_availability_zones_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_availability_zones
    ADD CONSTRAINT aws_availability_zones_cqpk PRIMARY KEY (account_id, region_name, zone_id);


--
-- Name: aws_backup_global_settings aws_backup_global_settings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_global_settings
    ADD CONSTRAINT aws_backup_global_settings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_backup_global_settings aws_backup_global_settings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_global_settings
    ADD CONSTRAINT aws_backup_global_settings_cqpk PRIMARY KEY (account_id, region);


--
-- Name: aws_backup_plan_selections aws_backup_plan_selections_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_plan_selections
    ADD CONSTRAINT aws_backup_plan_selections_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_backup_plans aws_backup_plans__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_plans
    ADD CONSTRAINT aws_backup_plans__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_backup_plans aws_backup_plans_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_plans
    ADD CONSTRAINT aws_backup_plans_cqpk PRIMARY KEY (arn);


--
-- Name: aws_backup_region_settings aws_backup_region_settings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_region_settings
    ADD CONSTRAINT aws_backup_region_settings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_backup_region_settings aws_backup_region_settings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_region_settings
    ADD CONSTRAINT aws_backup_region_settings_cqpk PRIMARY KEY (account_id, region);


--
-- Name: aws_backup_vault_recovery_points aws_backup_vault_recovery_points__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_vault_recovery_points
    ADD CONSTRAINT aws_backup_vault_recovery_points__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_backup_vault_recovery_points aws_backup_vault_recovery_points_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_vault_recovery_points
    ADD CONSTRAINT aws_backup_vault_recovery_points_cqpk PRIMARY KEY (arn);


--
-- Name: aws_backup_vaults aws_backup_vaults__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_vaults
    ADD CONSTRAINT aws_backup_vaults__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_backup_vaults aws_backup_vaults_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_backup_vaults
    ADD CONSTRAINT aws_backup_vaults_cqpk PRIMARY KEY (arn);


--
-- Name: aws_batch_job_definitions aws_batch_job_definitions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_batch_job_definitions
    ADD CONSTRAINT aws_batch_job_definitions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_batch_job_definitions aws_batch_job_definitions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_batch_job_definitions
    ADD CONSTRAINT aws_batch_job_definitions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_batch_job_queues aws_batch_job_queues__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_batch_job_queues
    ADD CONSTRAINT aws_batch_job_queues__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_batch_job_queues aws_batch_job_queues_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_batch_job_queues
    ADD CONSTRAINT aws_batch_job_queues_cqpk PRIMARY KEY (arn);


--
-- Name: aws_batch_jobs aws_batch_jobs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_batch_jobs
    ADD CONSTRAINT aws_batch_jobs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_batch_jobs aws_batch_jobs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_batch_jobs
    ADD CONSTRAINT aws_batch_jobs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_cloudformation_stack_resources aws_cloudformation_stack_resources_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudformation_stack_resources
    ADD CONSTRAINT aws_cloudformation_stack_resources_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_cloudformation_stacks aws_cloudformation_stacks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudformation_stacks
    ADD CONSTRAINT aws_cloudformation_stacks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudformation_stacks aws_cloudformation_stacks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudformation_stacks
    ADD CONSTRAINT aws_cloudformation_stacks_cqpk PRIMARY KEY (arn);


--
-- Name: aws_cloudfront_cache_policies aws_cloudfront_cache_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudfront_cache_policies
    ADD CONSTRAINT aws_cloudfront_cache_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudfront_cache_policies aws_cloudfront_cache_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudfront_cache_policies
    ADD CONSTRAINT aws_cloudfront_cache_policies_cqpk PRIMARY KEY (arn);


--
-- Name: aws_cloudfront_distributions aws_cloudfront_distributions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudfront_distributions
    ADD CONSTRAINT aws_cloudfront_distributions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudfront_distributions aws_cloudfront_distributions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudfront_distributions
    ADD CONSTRAINT aws_cloudfront_distributions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_cloudhsmv2_backups aws_cloudhsmv2_backups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudhsmv2_backups
    ADD CONSTRAINT aws_cloudhsmv2_backups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudhsmv2_backups aws_cloudhsmv2_backups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudhsmv2_backups
    ADD CONSTRAINT aws_cloudhsmv2_backups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_cloudhsmv2_clusters aws_cloudhsmv2_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudhsmv2_clusters
    ADD CONSTRAINT aws_cloudhsmv2_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudhsmv2_clusters aws_cloudhsmv2_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudhsmv2_clusters
    ADD CONSTRAINT aws_cloudhsmv2_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_cloudtrail_events aws_cloudtrail_events__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudtrail_events
    ADD CONSTRAINT aws_cloudtrail_events__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudtrail_events aws_cloudtrail_events_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudtrail_events
    ADD CONSTRAINT aws_cloudtrail_events_cqpk PRIMARY KEY (event_id);


--
-- Name: aws_cloudtrail_trail_event_selectors aws_cloudtrail_trail_event_selectors_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudtrail_trail_event_selectors
    ADD CONSTRAINT aws_cloudtrail_trail_event_selectors_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_cloudtrail_trails aws_cloudtrail_trails__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudtrail_trails
    ADD CONSTRAINT aws_cloudtrail_trails__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudtrail_trails aws_cloudtrail_trails_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudtrail_trails
    ADD CONSTRAINT aws_cloudtrail_trails_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_cloudwatch_alarms aws_cloudwatch_alarms__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatch_alarms
    ADD CONSTRAINT aws_cloudwatch_alarms__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudwatch_alarms aws_cloudwatch_alarms_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatch_alarms
    ADD CONSTRAINT aws_cloudwatch_alarms_cqpk PRIMARY KEY (arn);


--
-- Name: aws_cloudwatchlogs_log_group_subscription_filters aws_cloudwatchlogs_log_group_subscription_filters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatchlogs_log_group_subscription_filters
    ADD CONSTRAINT aws_cloudwatchlogs_log_group_subscription_filters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudwatchlogs_log_group_subscription_filters aws_cloudwatchlogs_log_group_subscription_filters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatchlogs_log_group_subscription_filters
    ADD CONSTRAINT aws_cloudwatchlogs_log_group_subscription_filters_cqpk PRIMARY KEY (log_group_arn, creation_time, filter_name);


--
-- Name: aws_cloudwatchlogs_log_groups aws_cloudwatchlogs_log_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatchlogs_log_groups
    ADD CONSTRAINT aws_cloudwatchlogs_log_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudwatchlogs_log_groups aws_cloudwatchlogs_log_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatchlogs_log_groups
    ADD CONSTRAINT aws_cloudwatchlogs_log_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_cloudwatchlogs_metric_filters aws_cloudwatchlogs_metric_filters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatchlogs_metric_filters
    ADD CONSTRAINT aws_cloudwatchlogs_metric_filters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudwatchlogs_metric_filters aws_cloudwatchlogs_metric_filters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatchlogs_metric_filters
    ADD CONSTRAINT aws_cloudwatchlogs_metric_filters_cqpk PRIMARY KEY (log_group_arn, filter_name);


--
-- Name: aws_cloudwatchlogs_resource_policies aws_cloudwatchlogs_resource_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatchlogs_resource_policies
    ADD CONSTRAINT aws_cloudwatchlogs_resource_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cloudwatchlogs_resource_policies aws_cloudwatchlogs_resource_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cloudwatchlogs_resource_policies
    ADD CONSTRAINT aws_cloudwatchlogs_resource_policies_cqpk PRIMARY KEY (account_id, region, policy_name);


--
-- Name: aws_codebuild_projects aws_codebuild_projects__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_codebuild_projects
    ADD CONSTRAINT aws_codebuild_projects__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_codebuild_projects aws_codebuild_projects_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_codebuild_projects
    ADD CONSTRAINT aws_codebuild_projects_cqpk PRIMARY KEY (arn);


--
-- Name: aws_codepipeline_pipelines aws_codepipeline_pipelines__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_codepipeline_pipelines
    ADD CONSTRAINT aws_codepipeline_pipelines__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_codepipeline_pipelines aws_codepipeline_pipelines_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_codepipeline_pipelines
    ADD CONSTRAINT aws_codepipeline_pipelines_cqpk PRIMARY KEY (arn);


--
-- Name: aws_codepipeline_webhooks aws_codepipeline_webhooks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_codepipeline_webhooks
    ADD CONSTRAINT aws_codepipeline_webhooks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_codepipeline_webhooks aws_codepipeline_webhooks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_codepipeline_webhooks
    ADD CONSTRAINT aws_codepipeline_webhooks_cqpk PRIMARY KEY (arn);


--
-- Name: aws_cognito_identity_pools aws_cognito_identity_pools__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cognito_identity_pools
    ADD CONSTRAINT aws_cognito_identity_pools__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cognito_identity_pools aws_cognito_identity_pools_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cognito_identity_pools
    ADD CONSTRAINT aws_cognito_identity_pools_cqpk PRIMARY KEY (account_id, region, id);


--
-- Name: aws_cognito_user_pool_identity_providers aws_cognito_user_pool_identity_providers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cognito_user_pool_identity_providers
    ADD CONSTRAINT aws_cognito_user_pool_identity_providers_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_cognito_user_pools aws_cognito_user_pools__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cognito_user_pools
    ADD CONSTRAINT aws_cognito_user_pools__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_cognito_user_pools aws_cognito_user_pools_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_cognito_user_pools
    ADD CONSTRAINT aws_cognito_user_pools_cqpk PRIMARY KEY (account_id, region, id);


--
-- Name: aws_computeoptimizer_autoscaling_group_recommendations aws_computeoptimizer_autoscaling_group_recommendatio__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_autoscaling_group_recommendations
    ADD CONSTRAINT aws_computeoptimizer_autoscaling_group_recommendatio__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_computeoptimizer_autoscaling_group_recommendations aws_computeoptimizer_autoscaling_group_recommendations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_autoscaling_group_recommendations
    ADD CONSTRAINT aws_computeoptimizer_autoscaling_group_recommendations_cqpk PRIMARY KEY (auto_scaling_group_arn);


--
-- Name: aws_computeoptimizer_ebs_volume_recommendations aws_computeoptimizer_ebs_volume_recommendations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_ebs_volume_recommendations
    ADD CONSTRAINT aws_computeoptimizer_ebs_volume_recommendations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_computeoptimizer_ebs_volume_recommendations aws_computeoptimizer_ebs_volume_recommendations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_ebs_volume_recommendations
    ADD CONSTRAINT aws_computeoptimizer_ebs_volume_recommendations_cqpk PRIMARY KEY (volume_arn);


--
-- Name: aws_computeoptimizer_ec2_instance_recommendations aws_computeoptimizer_ec2_instance_recommendations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_ec2_instance_recommendations
    ADD CONSTRAINT aws_computeoptimizer_ec2_instance_recommendations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_computeoptimizer_ec2_instance_recommendations aws_computeoptimizer_ec2_instance_recommendations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_ec2_instance_recommendations
    ADD CONSTRAINT aws_computeoptimizer_ec2_instance_recommendations_cqpk PRIMARY KEY (instance_arn);


--
-- Name: aws_computeoptimizer_ecs_service_recommendations aws_computeoptimizer_ecs_service_recommendations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_ecs_service_recommendations
    ADD CONSTRAINT aws_computeoptimizer_ecs_service_recommendations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_computeoptimizer_ecs_service_recommendations aws_computeoptimizer_ecs_service_recommendations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_ecs_service_recommendations
    ADD CONSTRAINT aws_computeoptimizer_ecs_service_recommendations_cqpk PRIMARY KEY (service_arn);


--
-- Name: aws_computeoptimizer_enrollment_statuses aws_computeoptimizer_enrollment_statuses__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_enrollment_statuses
    ADD CONSTRAINT aws_computeoptimizer_enrollment_statuses__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_computeoptimizer_enrollment_statuses aws_computeoptimizer_enrollment_statuses_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_enrollment_statuses
    ADD CONSTRAINT aws_computeoptimizer_enrollment_statuses_cqpk PRIMARY KEY (account_id);


--
-- Name: aws_computeoptimizer_lambda_function_recommendations aws_computeoptimizer_lambda_function_recommendations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_lambda_function_recommendations
    ADD CONSTRAINT aws_computeoptimizer_lambda_function_recommendations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_computeoptimizer_lambda_function_recommendations aws_computeoptimizer_lambda_function_recommendations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_computeoptimizer_lambda_function_recommendations
    ADD CONSTRAINT aws_computeoptimizer_lambda_function_recommendations_cqpk PRIMARY KEY (function_arn);


--
-- Name: aws_config_config_rule_compliances aws_config_config_rule_compliances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_config_config_rule_compliances
    ADD CONSTRAINT aws_config_config_rule_compliances_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_config_config_rules aws_config_config_rules__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_config_config_rules
    ADD CONSTRAINT aws_config_config_rules__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_config_config_rules aws_config_config_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_config_config_rules
    ADD CONSTRAINT aws_config_config_rules_cqpk PRIMARY KEY (arn);


--
-- Name: aws_config_configuration_recorders aws_config_configuration_recorders__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_config_configuration_recorders
    ADD CONSTRAINT aws_config_configuration_recorders__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_config_configuration_recorders aws_config_configuration_recorders_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_config_configuration_recorders
    ADD CONSTRAINT aws_config_configuration_recorders_cqpk PRIMARY KEY (arn);


--
-- Name: aws_config_conformance_pack_rule_compliances aws_config_conformance_pack_rule_compliances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_config_conformance_pack_rule_compliances
    ADD CONSTRAINT aws_config_conformance_pack_rule_compliances_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_config_conformance_packs aws_config_conformance_packs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_config_conformance_packs
    ADD CONSTRAINT aws_config_conformance_packs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_config_conformance_packs aws_config_conformance_packs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_config_conformance_packs
    ADD CONSTRAINT aws_config_conformance_packs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_dax_clusters aws_dax_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_dax_clusters
    ADD CONSTRAINT aws_dax_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_dax_clusters aws_dax_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_dax_clusters
    ADD CONSTRAINT aws_dax_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_db_proxies aws_db_proxies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_db_proxies
    ADD CONSTRAINT aws_db_proxies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_db_proxies aws_db_proxies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_db_proxies
    ADD CONSTRAINT aws_db_proxies_cqpk PRIMARY KEY (arn);


--
-- Name: aws_directconnect_connections aws_directconnect_connections__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_connections
    ADD CONSTRAINT aws_directconnect_connections__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_directconnect_connections aws_directconnect_connections_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_connections
    ADD CONSTRAINT aws_directconnect_connections_cqpk PRIMARY KEY (arn, id);


--
-- Name: aws_directconnect_gateway_associations aws_directconnect_gateway_associations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_gateway_associations
    ADD CONSTRAINT aws_directconnect_gateway_associations_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_directconnect_gateway_attachments aws_directconnect_gateway_attachments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_gateway_attachments
    ADD CONSTRAINT aws_directconnect_gateway_attachments_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_directconnect_gateways aws_directconnect_gateways__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_gateways
    ADD CONSTRAINT aws_directconnect_gateways__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_directconnect_gateways aws_directconnect_gateways_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_gateways
    ADD CONSTRAINT aws_directconnect_gateways_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_directconnect_lags aws_directconnect_lags__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_lags
    ADD CONSTRAINT aws_directconnect_lags__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_directconnect_lags aws_directconnect_lags_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_lags
    ADD CONSTRAINT aws_directconnect_lags_cqpk PRIMARY KEY (arn);


--
-- Name: aws_directconnect_locations aws_directconnect_locations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_locations
    ADD CONSTRAINT aws_directconnect_locations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_directconnect_locations aws_directconnect_locations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_locations
    ADD CONSTRAINT aws_directconnect_locations_cqpk PRIMARY KEY (account_id, region, location_code);


--
-- Name: aws_directconnect_virtual_gateways aws_directconnect_virtual_gateways__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_virtual_gateways
    ADD CONSTRAINT aws_directconnect_virtual_gateways__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_directconnect_virtual_gateways aws_directconnect_virtual_gateways_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_virtual_gateways
    ADD CONSTRAINT aws_directconnect_virtual_gateways_cqpk PRIMARY KEY (account_id, region, id);


--
-- Name: aws_directconnect_virtual_interfaces aws_directconnect_virtual_interfaces__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_virtual_interfaces
    ADD CONSTRAINT aws_directconnect_virtual_interfaces__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_directconnect_virtual_interfaces aws_directconnect_virtual_interfaces_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_directconnect_virtual_interfaces
    ADD CONSTRAINT aws_directconnect_virtual_interfaces_cqpk PRIMARY KEY (arn);


--
-- Name: aws_dms_replication_instances aws_dms_replication_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_dms_replication_instances
    ADD CONSTRAINT aws_dms_replication_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_dms_replication_instances aws_dms_replication_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_dms_replication_instances
    ADD CONSTRAINT aws_dms_replication_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_docdb_certificates aws_docdb_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_certificates
    ADD CONSTRAINT aws_docdb_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_docdb_certificates aws_docdb_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_certificates
    ADD CONSTRAINT aws_docdb_certificates_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_docdb_cluster_parameter_groups aws_docdb_cluster_parameter_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_cluster_parameter_groups
    ADD CONSTRAINT aws_docdb_cluster_parameter_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_docdb_cluster_parameter_groups aws_docdb_cluster_parameter_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_cluster_parameter_groups
    ADD CONSTRAINT aws_docdb_cluster_parameter_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_docdb_cluster_parameters aws_docdb_cluster_parameters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_cluster_parameters
    ADD CONSTRAINT aws_docdb_cluster_parameters_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_docdb_cluster_snapshots aws_docdb_cluster_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_cluster_snapshots
    ADD CONSTRAINT aws_docdb_cluster_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_docdb_cluster_snapshots aws_docdb_cluster_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_cluster_snapshots
    ADD CONSTRAINT aws_docdb_cluster_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_docdb_clusters aws_docdb_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_clusters
    ADD CONSTRAINT aws_docdb_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_docdb_clusters aws_docdb_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_clusters
    ADD CONSTRAINT aws_docdb_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_docdb_engine_versions aws_docdb_engine_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_engine_versions
    ADD CONSTRAINT aws_docdb_engine_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_docdb_engine_versions aws_docdb_engine_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_engine_versions
    ADD CONSTRAINT aws_docdb_engine_versions_cqpk PRIMARY KEY (account_id, region, engine, engine_version);


--
-- Name: aws_docdb_event_categories aws_docdb_event_categories_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_event_categories
    ADD CONSTRAINT aws_docdb_event_categories_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_docdb_event_subscriptions aws_docdb_event_subscriptions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_event_subscriptions
    ADD CONSTRAINT aws_docdb_event_subscriptions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_docdb_events aws_docdb_events_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_events
    ADD CONSTRAINT aws_docdb_events_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_docdb_global_clusters aws_docdb_global_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_global_clusters
    ADD CONSTRAINT aws_docdb_global_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_docdb_global_clusters aws_docdb_global_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_global_clusters
    ADD CONSTRAINT aws_docdb_global_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_docdb_instances aws_docdb_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_instances
    ADD CONSTRAINT aws_docdb_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_docdb_instances aws_docdb_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_instances
    ADD CONSTRAINT aws_docdb_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_docdb_orderable_db_instance_options aws_docdb_orderable_db_instance_options_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_orderable_db_instance_options
    ADD CONSTRAINT aws_docdb_orderable_db_instance_options_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_docdb_pending_maintenance_actions aws_docdb_pending_maintenance_actions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_pending_maintenance_actions
    ADD CONSTRAINT aws_docdb_pending_maintenance_actions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_docdb_subnet_groups aws_docdb_subnet_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_subnet_groups
    ADD CONSTRAINT aws_docdb_subnet_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_docdb_subnet_groups aws_docdb_subnet_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_docdb_subnet_groups
    ADD CONSTRAINT aws_docdb_subnet_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_dynamodb_table_continuous_backups aws_dynamodb_table_continuous_backups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_dynamodb_table_continuous_backups
    ADD CONSTRAINT aws_dynamodb_table_continuous_backups_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_dynamodb_table_replica_auto_scalings aws_dynamodb_table_replica_auto_scalings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_dynamodb_table_replica_auto_scalings
    ADD CONSTRAINT aws_dynamodb_table_replica_auto_scalings_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_dynamodb_tables aws_dynamodb_tables__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_dynamodb_tables
    ADD CONSTRAINT aws_dynamodb_tables__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_dynamodb_tables aws_dynamodb_tables_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_dynamodb_tables
    ADD CONSTRAINT aws_dynamodb_tables_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_account_attributes aws_ec2_account_attributes__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_account_attributes
    ADD CONSTRAINT aws_ec2_account_attributes__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_account_attributes aws_ec2_account_attributes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_account_attributes
    ADD CONSTRAINT aws_ec2_account_attributes_cqpk PRIMARY KEY (account_id, attribute_name);


--
-- Name: aws_ec2_byoip_cidrs aws_ec2_byoip_cidrs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_byoip_cidrs
    ADD CONSTRAINT aws_ec2_byoip_cidrs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_byoip_cidrs aws_ec2_byoip_cidrs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_byoip_cidrs
    ADD CONSTRAINT aws_ec2_byoip_cidrs_cqpk PRIMARY KEY (account_id, region, cidr);


--
-- Name: aws_ec2_customer_gateways aws_ec2_customer_gateways__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_customer_gateways
    ADD CONSTRAINT aws_ec2_customer_gateways__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_customer_gateways aws_ec2_customer_gateways_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_customer_gateways
    ADD CONSTRAINT aws_ec2_customer_gateways_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_dhcp_options aws_ec2_dhcp_options__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_dhcp_options
    ADD CONSTRAINT aws_ec2_dhcp_options__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_dhcp_options aws_ec2_dhcp_options_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_dhcp_options
    ADD CONSTRAINT aws_ec2_dhcp_options_cqpk PRIMARY KEY (account_id, region, dhcp_options_id);


--
-- Name: aws_ec2_ebs_snapshots aws_ec2_ebs_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_ebs_snapshots
    ADD CONSTRAINT aws_ec2_ebs_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_ebs_snapshots aws_ec2_ebs_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_ebs_snapshots
    ADD CONSTRAINT aws_ec2_ebs_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_ebs_volume_statuses aws_ec2_ebs_volume_statuses__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_ebs_volume_statuses
    ADD CONSTRAINT aws_ec2_ebs_volume_statuses__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_ebs_volume_statuses aws_ec2_ebs_volume_statuses_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_ebs_volume_statuses
    ADD CONSTRAINT aws_ec2_ebs_volume_statuses_cqpk PRIMARY KEY (volume_arn);


--
-- Name: aws_ec2_ebs_volumes aws_ec2_ebs_volumes__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_ebs_volumes
    ADD CONSTRAINT aws_ec2_ebs_volumes__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_ebs_volumes aws_ec2_ebs_volumes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_ebs_volumes
    ADD CONSTRAINT aws_ec2_ebs_volumes_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_egress_only_internet_gateways aws_ec2_egress_only_internet_gateways__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_egress_only_internet_gateways
    ADD CONSTRAINT aws_ec2_egress_only_internet_gateways__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_egress_only_internet_gateways aws_ec2_egress_only_internet_gateways_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_egress_only_internet_gateways
    ADD CONSTRAINT aws_ec2_egress_only_internet_gateways_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_eips aws_ec2_eips_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_eips
    ADD CONSTRAINT aws_ec2_eips_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ec2_flow_logs aws_ec2_flow_logs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_flow_logs
    ADD CONSTRAINT aws_ec2_flow_logs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_flow_logs aws_ec2_flow_logs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_flow_logs
    ADD CONSTRAINT aws_ec2_flow_logs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_hosts aws_ec2_hosts__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_hosts
    ADD CONSTRAINT aws_ec2_hosts__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_hosts aws_ec2_hosts_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_hosts
    ADD CONSTRAINT aws_ec2_hosts_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_image_launch_permissions aws_ec2_image_launch_permissions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_image_launch_permissions
    ADD CONSTRAINT aws_ec2_image_launch_permissions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ec2_images aws_ec2_images__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_images
    ADD CONSTRAINT aws_ec2_images__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_images aws_ec2_images_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_images
    ADD CONSTRAINT aws_ec2_images_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_ec2_instance_statuses aws_ec2_instance_statuses__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_instance_statuses
    ADD CONSTRAINT aws_ec2_instance_statuses__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_instance_statuses aws_ec2_instance_statuses_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_instance_statuses
    ADD CONSTRAINT aws_ec2_instance_statuses_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_instance_types aws_ec2_instance_types__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_instance_types
    ADD CONSTRAINT aws_ec2_instance_types__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_instance_types aws_ec2_instance_types_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_instance_types
    ADD CONSTRAINT aws_ec2_instance_types_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_instances aws_ec2_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_instances
    ADD CONSTRAINT aws_ec2_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_instances aws_ec2_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_instances
    ADD CONSTRAINT aws_ec2_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_internet_gateways aws_ec2_internet_gateways__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_internet_gateways
    ADD CONSTRAINT aws_ec2_internet_gateways__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_internet_gateways aws_ec2_internet_gateways_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_internet_gateways
    ADD CONSTRAINT aws_ec2_internet_gateways_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_key_pairs aws_ec2_key_pairs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_key_pairs
    ADD CONSTRAINT aws_ec2_key_pairs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_key_pairs aws_ec2_key_pairs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_key_pairs
    ADD CONSTRAINT aws_ec2_key_pairs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_launch_template_versions aws_ec2_launch_template_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_launch_template_versions
    ADD CONSTRAINT aws_ec2_launch_template_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_launch_template_versions aws_ec2_launch_template_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_launch_template_versions
    ADD CONSTRAINT aws_ec2_launch_template_versions_cqpk PRIMARY KEY (arn, version_number);


--
-- Name: aws_ec2_launch_templates aws_ec2_launch_templates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_launch_templates
    ADD CONSTRAINT aws_ec2_launch_templates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_launch_templates aws_ec2_launch_templates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_launch_templates
    ADD CONSTRAINT aws_ec2_launch_templates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_managed_prefix_lists aws_ec2_managed_prefix_lists__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_managed_prefix_lists
    ADD CONSTRAINT aws_ec2_managed_prefix_lists__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_managed_prefix_lists aws_ec2_managed_prefix_lists_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_managed_prefix_lists
    ADD CONSTRAINT aws_ec2_managed_prefix_lists_cqpk PRIMARY KEY (request_account_id, request_region, arn);


--
-- Name: aws_ec2_nat_gateways aws_ec2_nat_gateways__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_nat_gateways
    ADD CONSTRAINT aws_ec2_nat_gateways__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_nat_gateways aws_ec2_nat_gateways_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_nat_gateways
    ADD CONSTRAINT aws_ec2_nat_gateways_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_network_acls aws_ec2_network_acls__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_network_acls
    ADD CONSTRAINT aws_ec2_network_acls__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_network_acls aws_ec2_network_acls_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_network_acls
    ADD CONSTRAINT aws_ec2_network_acls_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_network_interfaces aws_ec2_network_interfaces__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_network_interfaces
    ADD CONSTRAINT aws_ec2_network_interfaces__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_network_interfaces aws_ec2_network_interfaces_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_network_interfaces
    ADD CONSTRAINT aws_ec2_network_interfaces_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_regional_configs aws_ec2_regional_configs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_regional_configs
    ADD CONSTRAINT aws_ec2_regional_configs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_regional_configs aws_ec2_regional_configs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_regional_configs
    ADD CONSTRAINT aws_ec2_regional_configs_cqpk PRIMARY KEY (account_id, region);


--
-- Name: aws_ec2_reserved_instances aws_ec2_reserved_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_reserved_instances
    ADD CONSTRAINT aws_ec2_reserved_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_reserved_instances aws_ec2_reserved_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_reserved_instances
    ADD CONSTRAINT aws_ec2_reserved_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_route_tables aws_ec2_route_tables__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_route_tables
    ADD CONSTRAINT aws_ec2_route_tables__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_route_tables aws_ec2_route_tables_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_route_tables
    ADD CONSTRAINT aws_ec2_route_tables_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_security_groups aws_ec2_security_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_security_groups
    ADD CONSTRAINT aws_ec2_security_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_security_groups aws_ec2_security_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_security_groups
    ADD CONSTRAINT aws_ec2_security_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_spot_fleet_instances aws_ec2_spot_fleet_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_spot_fleet_instances
    ADD CONSTRAINT aws_ec2_spot_fleet_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_spot_fleet_instances aws_ec2_spot_fleet_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_spot_fleet_instances
    ADD CONSTRAINT aws_ec2_spot_fleet_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_spot_fleet_requests aws_ec2_spot_fleet_requests__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_spot_fleet_requests
    ADD CONSTRAINT aws_ec2_spot_fleet_requests__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_spot_fleet_requests aws_ec2_spot_fleet_requests_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_spot_fleet_requests
    ADD CONSTRAINT aws_ec2_spot_fleet_requests_cqpk PRIMARY KEY (account_id, region, spot_fleet_request_id);


--
-- Name: aws_ec2_spot_instance_requests aws_ec2_spot_instance_requests__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_spot_instance_requests
    ADD CONSTRAINT aws_ec2_spot_instance_requests__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_spot_instance_requests aws_ec2_spot_instance_requests_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_spot_instance_requests
    ADD CONSTRAINT aws_ec2_spot_instance_requests_cqpk PRIMARY KEY (account_id, region, spot_instance_request_id);


--
-- Name: aws_ec2_subnets aws_ec2_subnets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_subnets
    ADD CONSTRAINT aws_ec2_subnets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_subnets aws_ec2_subnets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_subnets
    ADD CONSTRAINT aws_ec2_subnets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_transit_gateway_attachments aws_ec2_transit_gateway_attachments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_transit_gateway_attachments
    ADD CONSTRAINT aws_ec2_transit_gateway_attachments_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ec2_transit_gateway_multicast_domains aws_ec2_transit_gateway_multicast_domains_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_transit_gateway_multicast_domains
    ADD CONSTRAINT aws_ec2_transit_gateway_multicast_domains_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ec2_transit_gateway_peering_attachments aws_ec2_transit_gateway_peering_attachments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_transit_gateway_peering_attachments
    ADD CONSTRAINT aws_ec2_transit_gateway_peering_attachments_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ec2_transit_gateway_route_tables aws_ec2_transit_gateway_route_tables_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_transit_gateway_route_tables
    ADD CONSTRAINT aws_ec2_transit_gateway_route_tables_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ec2_transit_gateway_vpc_attachments aws_ec2_transit_gateway_vpc_attachments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_transit_gateway_vpc_attachments
    ADD CONSTRAINT aws_ec2_transit_gateway_vpc_attachments_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ec2_transit_gateways aws_ec2_transit_gateways__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_transit_gateways
    ADD CONSTRAINT aws_ec2_transit_gateways__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_transit_gateways aws_ec2_transit_gateways_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_transit_gateways
    ADD CONSTRAINT aws_ec2_transit_gateways_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_ec2_vpc_endpoint_service_configurations aws_ec2_vpc_endpoint_service_configurations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_endpoint_service_configurations
    ADD CONSTRAINT aws_ec2_vpc_endpoint_service_configurations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_vpc_endpoint_service_configurations aws_ec2_vpc_endpoint_service_configurations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_endpoint_service_configurations
    ADD CONSTRAINT aws_ec2_vpc_endpoint_service_configurations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_vpc_endpoint_service_permissions aws_ec2_vpc_endpoint_service_permissions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_endpoint_service_permissions
    ADD CONSTRAINT aws_ec2_vpc_endpoint_service_permissions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_vpc_endpoint_service_permissions aws_ec2_vpc_endpoint_service_permissions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_endpoint_service_permissions
    ADD CONSTRAINT aws_ec2_vpc_endpoint_service_permissions_cqpk PRIMARY KEY (account_id, service_id, service_permission_id);


--
-- Name: aws_ec2_vpc_endpoint_services aws_ec2_vpc_endpoint_services__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_endpoint_services
    ADD CONSTRAINT aws_ec2_vpc_endpoint_services__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_vpc_endpoint_services aws_ec2_vpc_endpoint_services_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_endpoint_services
    ADD CONSTRAINT aws_ec2_vpc_endpoint_services_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_vpc_endpoints aws_ec2_vpc_endpoints__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_endpoints
    ADD CONSTRAINT aws_ec2_vpc_endpoints__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_vpc_endpoints aws_ec2_vpc_endpoints_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_endpoints
    ADD CONSTRAINT aws_ec2_vpc_endpoints_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_vpc_peering_connections aws_ec2_vpc_peering_connections__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_peering_connections
    ADD CONSTRAINT aws_ec2_vpc_peering_connections__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_vpc_peering_connections aws_ec2_vpc_peering_connections_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpc_peering_connections
    ADD CONSTRAINT aws_ec2_vpc_peering_connections_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_vpcs aws_ec2_vpcs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpcs
    ADD CONSTRAINT aws_ec2_vpcs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_vpcs aws_ec2_vpcs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpcs
    ADD CONSTRAINT aws_ec2_vpcs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ec2_vpn_gateways aws_ec2_vpn_gateways__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpn_gateways
    ADD CONSTRAINT aws_ec2_vpn_gateways__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ec2_vpn_gateways aws_ec2_vpn_gateways_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ec2_vpn_gateways
    ADD CONSTRAINT aws_ec2_vpn_gateways_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ecr_registries aws_ecr_registries__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecr_registries
    ADD CONSTRAINT aws_ecr_registries__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecr_registries aws_ecr_registries_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecr_registries
    ADD CONSTRAINT aws_ecr_registries_cqpk PRIMARY KEY (account_id, region, registry_id);


--
-- Name: aws_ecr_registry_policies aws_ecr_registry_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecr_registry_policies
    ADD CONSTRAINT aws_ecr_registry_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecr_registry_policies aws_ecr_registry_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecr_registry_policies
    ADD CONSTRAINT aws_ecr_registry_policies_cqpk PRIMARY KEY (account_id, region, registry_id);


--
-- Name: aws_ecr_repositories aws_ecr_repositories__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecr_repositories
    ADD CONSTRAINT aws_ecr_repositories__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecr_repositories aws_ecr_repositories_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecr_repositories
    ADD CONSTRAINT aws_ecr_repositories_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ecr_repository_image_scan_findings aws_ecr_repository_image_scan_findings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecr_repository_image_scan_findings
    ADD CONSTRAINT aws_ecr_repository_image_scan_findings_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ecr_repository_images aws_ecr_repository_images__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecr_repository_images
    ADD CONSTRAINT aws_ecr_repository_images__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecr_repository_images aws_ecr_repository_images_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecr_repository_images
    ADD CONSTRAINT aws_ecr_repository_images_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ecrpublic_repositories aws_ecrpublic_repositories__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecrpublic_repositories
    ADD CONSTRAINT aws_ecrpublic_repositories__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecrpublic_repositories aws_ecrpublic_repositories_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecrpublic_repositories
    ADD CONSTRAINT aws_ecrpublic_repositories_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ecrpublic_repository_images aws_ecrpublic_repository_images__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecrpublic_repository_images
    ADD CONSTRAINT aws_ecrpublic_repository_images__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecrpublic_repository_images aws_ecrpublic_repository_images_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecrpublic_repository_images
    ADD CONSTRAINT aws_ecrpublic_repository_images_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ecs_cluster_container_instances aws_ecs_cluster_container_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_cluster_container_instances
    ADD CONSTRAINT aws_ecs_cluster_container_instances_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ecs_cluster_services aws_ecs_cluster_services__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_cluster_services
    ADD CONSTRAINT aws_ecs_cluster_services__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecs_cluster_services aws_ecs_cluster_services_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_cluster_services
    ADD CONSTRAINT aws_ecs_cluster_services_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ecs_cluster_task_sets aws_ecs_cluster_task_sets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_cluster_task_sets
    ADD CONSTRAINT aws_ecs_cluster_task_sets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecs_cluster_task_sets aws_ecs_cluster_task_sets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_cluster_task_sets
    ADD CONSTRAINT aws_ecs_cluster_task_sets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ecs_cluster_tasks aws_ecs_cluster_tasks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_cluster_tasks
    ADD CONSTRAINT aws_ecs_cluster_tasks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecs_cluster_tasks aws_ecs_cluster_tasks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_cluster_tasks
    ADD CONSTRAINT aws_ecs_cluster_tasks_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ecs_clusters aws_ecs_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_clusters
    ADD CONSTRAINT aws_ecs_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecs_clusters aws_ecs_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_clusters
    ADD CONSTRAINT aws_ecs_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ecs_task_definitions aws_ecs_task_definitions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_task_definitions
    ADD CONSTRAINT aws_ecs_task_definitions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ecs_task_definitions aws_ecs_task_definitions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ecs_task_definitions
    ADD CONSTRAINT aws_ecs_task_definitions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_efs_filesystems aws_efs_filesystems__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_efs_filesystems
    ADD CONSTRAINT aws_efs_filesystems__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_efs_filesystems aws_efs_filesystems_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_efs_filesystems
    ADD CONSTRAINT aws_efs_filesystems_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eks_cluster_node_groups aws_eks_cluster_node_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eks_cluster_node_groups
    ADD CONSTRAINT aws_eks_cluster_node_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eks_cluster_node_groups aws_eks_cluster_node_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eks_cluster_node_groups
    ADD CONSTRAINT aws_eks_cluster_node_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eks_clusters aws_eks_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eks_clusters
    ADD CONSTRAINT aws_eks_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eks_clusters aws_eks_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eks_clusters
    ADD CONSTRAINT aws_eks_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eks_fargate_profiles aws_eks_fargate_profiles__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eks_fargate_profiles
    ADD CONSTRAINT aws_eks_fargate_profiles__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eks_fargate_profiles aws_eks_fargate_profiles_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eks_fargate_profiles
    ADD CONSTRAINT aws_eks_fargate_profiles_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_clusters aws_elasticache_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_clusters
    ADD CONSTRAINT aws_elasticache_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_clusters aws_elasticache_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_clusters
    ADD CONSTRAINT aws_elasticache_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_engine_versions aws_elasticache_engine_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_engine_versions
    ADD CONSTRAINT aws_elasticache_engine_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_engine_versions aws_elasticache_engine_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_engine_versions
    ADD CONSTRAINT aws_elasticache_engine_versions_cqpk PRIMARY KEY (account_id, region, engine, engine_version);


--
-- Name: aws_elasticache_events aws_elasticache_events__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_events
    ADD CONSTRAINT aws_elasticache_events__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_events aws_elasticache_events_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_events
    ADD CONSTRAINT aws_elasticache_events_cqpk PRIMARY KEY (_event_hash);


--
-- Name: aws_elasticache_global_replication_groups aws_elasticache_global_replication_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_global_replication_groups
    ADD CONSTRAINT aws_elasticache_global_replication_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_global_replication_groups aws_elasticache_global_replication_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_global_replication_groups
    ADD CONSTRAINT aws_elasticache_global_replication_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_parameter_groups aws_elasticache_parameter_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_parameter_groups
    ADD CONSTRAINT aws_elasticache_parameter_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_parameter_groups aws_elasticache_parameter_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_parameter_groups
    ADD CONSTRAINT aws_elasticache_parameter_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_replication_groups aws_elasticache_replication_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_replication_groups
    ADD CONSTRAINT aws_elasticache_replication_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_replication_groups aws_elasticache_replication_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_replication_groups
    ADD CONSTRAINT aws_elasticache_replication_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_reserved_cache_nodes aws_elasticache_reserved_cache_nodes__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_reserved_cache_nodes
    ADD CONSTRAINT aws_elasticache_reserved_cache_nodes__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_reserved_cache_nodes aws_elasticache_reserved_cache_nodes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_reserved_cache_nodes
    ADD CONSTRAINT aws_elasticache_reserved_cache_nodes_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_reserved_cache_nodes_offerings aws_elasticache_reserved_cache_nodes_offerings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_reserved_cache_nodes_offerings
    ADD CONSTRAINT aws_elasticache_reserved_cache_nodes_offerings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_reserved_cache_nodes_offerings aws_elasticache_reserved_cache_nodes_offerings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_reserved_cache_nodes_offerings
    ADD CONSTRAINT aws_elasticache_reserved_cache_nodes_offerings_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_service_updates aws_elasticache_service_updates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_service_updates
    ADD CONSTRAINT aws_elasticache_service_updates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_service_updates aws_elasticache_service_updates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_service_updates
    ADD CONSTRAINT aws_elasticache_service_updates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_snapshots aws_elasticache_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_snapshots
    ADD CONSTRAINT aws_elasticache_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_snapshots aws_elasticache_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_snapshots
    ADD CONSTRAINT aws_elasticache_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_subnet_groups aws_elasticache_subnet_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_subnet_groups
    ADD CONSTRAINT aws_elasticache_subnet_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_subnet_groups aws_elasticache_subnet_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_subnet_groups
    ADD CONSTRAINT aws_elasticache_subnet_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_update_actions aws_elasticache_update_actions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_update_actions
    ADD CONSTRAINT aws_elasticache_update_actions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_elasticache_user_groups aws_elasticache_user_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_user_groups
    ADD CONSTRAINT aws_elasticache_user_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_user_groups aws_elasticache_user_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_user_groups
    ADD CONSTRAINT aws_elasticache_user_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticache_users aws_elasticache_users__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_users
    ADD CONSTRAINT aws_elasticache_users__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticache_users aws_elasticache_users_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticache_users
    ADD CONSTRAINT aws_elasticache_users_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticbeanstalk_application_versions aws_elasticbeanstalk_application_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticbeanstalk_application_versions
    ADD CONSTRAINT aws_elasticbeanstalk_application_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticbeanstalk_application_versions aws_elasticbeanstalk_application_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticbeanstalk_application_versions
    ADD CONSTRAINT aws_elasticbeanstalk_application_versions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticbeanstalk_applications aws_elasticbeanstalk_applications__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticbeanstalk_applications
    ADD CONSTRAINT aws_elasticbeanstalk_applications__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticbeanstalk_applications aws_elasticbeanstalk_applications_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticbeanstalk_applications
    ADD CONSTRAINT aws_elasticbeanstalk_applications_cqpk PRIMARY KEY (arn, date_created);


--
-- Name: aws_elasticbeanstalk_configuration_options aws_elasticbeanstalk_configuration_options_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticbeanstalk_configuration_options
    ADD CONSTRAINT aws_elasticbeanstalk_configuration_options_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_elasticbeanstalk_configuration_settings aws_elasticbeanstalk_configuration_settings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticbeanstalk_configuration_settings
    ADD CONSTRAINT aws_elasticbeanstalk_configuration_settings_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_elasticbeanstalk_environments aws_elasticbeanstalk_environments__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticbeanstalk_environments
    ADD CONSTRAINT aws_elasticbeanstalk_environments__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticbeanstalk_environments aws_elasticbeanstalk_environments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticbeanstalk_environments
    ADD CONSTRAINT aws_elasticbeanstalk_environments_cqpk PRIMARY KEY (account_id, id);


--
-- Name: aws_elasticsearch_domains aws_elasticsearch_domains__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticsearch_domains
    ADD CONSTRAINT aws_elasticsearch_domains__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticsearch_domains aws_elasticsearch_domains_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticsearch_domains
    ADD CONSTRAINT aws_elasticsearch_domains_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elasticsearch_packages aws_elasticsearch_packages__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticsearch_packages
    ADD CONSTRAINT aws_elasticsearch_packages__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticsearch_packages aws_elasticsearch_packages_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticsearch_packages
    ADD CONSTRAINT aws_elasticsearch_packages_cqpk PRIMARY KEY (account_id, region, id);


--
-- Name: aws_elasticsearch_versions aws_elasticsearch_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticsearch_versions
    ADD CONSTRAINT aws_elasticsearch_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticsearch_versions aws_elasticsearch_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticsearch_versions
    ADD CONSTRAINT aws_elasticsearch_versions_cqpk PRIMARY KEY (account_id, region, version);


--
-- Name: aws_elasticsearch_vpc_endpoints aws_elasticsearch_vpc_endpoints__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticsearch_vpc_endpoints
    ADD CONSTRAINT aws_elasticsearch_vpc_endpoints__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elasticsearch_vpc_endpoints aws_elasticsearch_vpc_endpoints_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elasticsearch_vpc_endpoints
    ADD CONSTRAINT aws_elasticsearch_vpc_endpoints_cqpk PRIMARY KEY (id);


--
-- Name: aws_elastictranscoder_pipeline_jobs aws_elastictranscoder_pipeline_jobs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elastictranscoder_pipeline_jobs
    ADD CONSTRAINT aws_elastictranscoder_pipeline_jobs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elastictranscoder_pipeline_jobs aws_elastictranscoder_pipeline_jobs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elastictranscoder_pipeline_jobs
    ADD CONSTRAINT aws_elastictranscoder_pipeline_jobs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elastictranscoder_pipelines aws_elastictranscoder_pipelines__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elastictranscoder_pipelines
    ADD CONSTRAINT aws_elastictranscoder_pipelines__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elastictranscoder_pipelines aws_elastictranscoder_pipelines_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elastictranscoder_pipelines
    ADD CONSTRAINT aws_elastictranscoder_pipelines_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elastictranscoder_presets aws_elastictranscoder_presets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elastictranscoder_presets
    ADD CONSTRAINT aws_elastictranscoder_presets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elastictranscoder_presets aws_elastictranscoder_presets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elastictranscoder_presets
    ADD CONSTRAINT aws_elastictranscoder_presets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elbv1_load_balancer_policies aws_elbv1_load_balancer_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv1_load_balancer_policies
    ADD CONSTRAINT aws_elbv1_load_balancer_policies_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_elbv1_load_balancers aws_elbv1_load_balancers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv1_load_balancers
    ADD CONSTRAINT aws_elbv1_load_balancers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elbv1_load_balancers aws_elbv1_load_balancers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv1_load_balancers
    ADD CONSTRAINT aws_elbv1_load_balancers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elbv2_listener_certificates aws_elbv2_listener_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv2_listener_certificates
    ADD CONSTRAINT aws_elbv2_listener_certificates_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_elbv2_listeners aws_elbv2_listeners__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv2_listeners
    ADD CONSTRAINT aws_elbv2_listeners__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elbv2_listeners aws_elbv2_listeners_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv2_listeners
    ADD CONSTRAINT aws_elbv2_listeners_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elbv2_load_balancer_attributes aws_elbv2_load_balancer_attributes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv2_load_balancer_attributes
    ADD CONSTRAINT aws_elbv2_load_balancer_attributes_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_elbv2_load_balancers aws_elbv2_load_balancers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv2_load_balancers
    ADD CONSTRAINT aws_elbv2_load_balancers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elbv2_load_balancers aws_elbv2_load_balancers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv2_load_balancers
    ADD CONSTRAINT aws_elbv2_load_balancers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_elbv2_target_group_target_health_descriptions aws_elbv2_target_group_target_health_descriptions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv2_target_group_target_health_descriptions
    ADD CONSTRAINT aws_elbv2_target_group_target_health_descriptions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_elbv2_target_groups aws_elbv2_target_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv2_target_groups
    ADD CONSTRAINT aws_elbv2_target_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_elbv2_target_groups aws_elbv2_target_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_elbv2_target_groups
    ADD CONSTRAINT aws_elbv2_target_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_emr_block_public_access_configs aws_emr_block_public_access_configs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_block_public_access_configs
    ADD CONSTRAINT aws_emr_block_public_access_configs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_emr_block_public_access_configs aws_emr_block_public_access_configs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_block_public_access_configs
    ADD CONSTRAINT aws_emr_block_public_access_configs_cqpk PRIMARY KEY (account_id, region);


--
-- Name: aws_emr_cluster_instance_fleets aws_emr_cluster_instance_fleets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_cluster_instance_fleets
    ADD CONSTRAINT aws_emr_cluster_instance_fleets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_emr_cluster_instance_fleets aws_emr_cluster_instance_fleets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_cluster_instance_fleets
    ADD CONSTRAINT aws_emr_cluster_instance_fleets_cqpk PRIMARY KEY (cluster_arn, id);


--
-- Name: aws_emr_cluster_instance_groups aws_emr_cluster_instance_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_cluster_instance_groups
    ADD CONSTRAINT aws_emr_cluster_instance_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_emr_cluster_instance_groups aws_emr_cluster_instance_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_cluster_instance_groups
    ADD CONSTRAINT aws_emr_cluster_instance_groups_cqpk PRIMARY KEY (cluster_arn, id);


--
-- Name: aws_emr_cluster_instances aws_emr_cluster_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_cluster_instances
    ADD CONSTRAINT aws_emr_cluster_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_emr_cluster_instances aws_emr_cluster_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_cluster_instances
    ADD CONSTRAINT aws_emr_cluster_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_emr_clusters aws_emr_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_clusters
    ADD CONSTRAINT aws_emr_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_emr_clusters aws_emr_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_clusters
    ADD CONSTRAINT aws_emr_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_emr_security_configurations aws_emr_security_configurations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_security_configurations
    ADD CONSTRAINT aws_emr_security_configurations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_emr_security_configurations aws_emr_security_configurations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_emr_security_configurations
    ADD CONSTRAINT aws_emr_security_configurations_cqpk PRIMARY KEY (account_id, region, name);


--
-- Name: aws_eventbridge_api_destinations aws_eventbridge_api_destinations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_api_destinations
    ADD CONSTRAINT aws_eventbridge_api_destinations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eventbridge_api_destinations aws_eventbridge_api_destinations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_api_destinations
    ADD CONSTRAINT aws_eventbridge_api_destinations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eventbridge_archives aws_eventbridge_archives__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_archives
    ADD CONSTRAINT aws_eventbridge_archives__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eventbridge_archives aws_eventbridge_archives_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_archives
    ADD CONSTRAINT aws_eventbridge_archives_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eventbridge_connections aws_eventbridge_connections__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_connections
    ADD CONSTRAINT aws_eventbridge_connections__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eventbridge_connections aws_eventbridge_connections_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_connections
    ADD CONSTRAINT aws_eventbridge_connections_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eventbridge_endpoints aws_eventbridge_endpoints__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_endpoints
    ADD CONSTRAINT aws_eventbridge_endpoints__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eventbridge_endpoints aws_eventbridge_endpoints_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_endpoints
    ADD CONSTRAINT aws_eventbridge_endpoints_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eventbridge_event_bus_rules aws_eventbridge_event_bus_rules__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_event_bus_rules
    ADD CONSTRAINT aws_eventbridge_event_bus_rules__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eventbridge_event_bus_rules aws_eventbridge_event_bus_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_event_bus_rules
    ADD CONSTRAINT aws_eventbridge_event_bus_rules_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eventbridge_event_buses aws_eventbridge_event_buses__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_event_buses
    ADD CONSTRAINT aws_eventbridge_event_buses__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eventbridge_event_buses aws_eventbridge_event_buses_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_event_buses
    ADD CONSTRAINT aws_eventbridge_event_buses_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eventbridge_event_sources aws_eventbridge_event_sources__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_event_sources
    ADD CONSTRAINT aws_eventbridge_event_sources__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eventbridge_event_sources aws_eventbridge_event_sources_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_event_sources
    ADD CONSTRAINT aws_eventbridge_event_sources_cqpk PRIMARY KEY (arn);


--
-- Name: aws_eventbridge_replays aws_eventbridge_replays__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_replays
    ADD CONSTRAINT aws_eventbridge_replays__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_eventbridge_replays aws_eventbridge_replays_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_eventbridge_replays
    ADD CONSTRAINT aws_eventbridge_replays_cqpk PRIMARY KEY (arn);


--
-- Name: aws_firehose_delivery_streams aws_firehose_delivery_streams__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_firehose_delivery_streams
    ADD CONSTRAINT aws_firehose_delivery_streams__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_firehose_delivery_streams aws_firehose_delivery_streams_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_firehose_delivery_streams
    ADD CONSTRAINT aws_firehose_delivery_streams_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_batch_imports aws_frauddetector_batch_imports__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_batch_imports
    ADD CONSTRAINT aws_frauddetector_batch_imports__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_batch_imports aws_frauddetector_batch_imports_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_batch_imports
    ADD CONSTRAINT aws_frauddetector_batch_imports_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_batch_predictions aws_frauddetector_batch_predictions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_batch_predictions
    ADD CONSTRAINT aws_frauddetector_batch_predictions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_batch_predictions aws_frauddetector_batch_predictions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_batch_predictions
    ADD CONSTRAINT aws_frauddetector_batch_predictions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_detectors aws_frauddetector_detectors__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_detectors
    ADD CONSTRAINT aws_frauddetector_detectors__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_detectors aws_frauddetector_detectors_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_detectors
    ADD CONSTRAINT aws_frauddetector_detectors_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_entity_types aws_frauddetector_entity_types__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_entity_types
    ADD CONSTRAINT aws_frauddetector_entity_types__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_entity_types aws_frauddetector_entity_types_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_entity_types
    ADD CONSTRAINT aws_frauddetector_entity_types_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_event_types aws_frauddetector_event_types__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_event_types
    ADD CONSTRAINT aws_frauddetector_event_types__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_event_types aws_frauddetector_event_types_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_event_types
    ADD CONSTRAINT aws_frauddetector_event_types_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_external_models aws_frauddetector_external_models__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_external_models
    ADD CONSTRAINT aws_frauddetector_external_models__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_external_models aws_frauddetector_external_models_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_external_models
    ADD CONSTRAINT aws_frauddetector_external_models_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_labels aws_frauddetector_labels__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_labels
    ADD CONSTRAINT aws_frauddetector_labels__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_labels aws_frauddetector_labels_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_labels
    ADD CONSTRAINT aws_frauddetector_labels_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_model_versions aws_frauddetector_model_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_model_versions
    ADD CONSTRAINT aws_frauddetector_model_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_model_versions aws_frauddetector_model_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_model_versions
    ADD CONSTRAINT aws_frauddetector_model_versions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_models aws_frauddetector_models__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_models
    ADD CONSTRAINT aws_frauddetector_models__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_models aws_frauddetector_models_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_models
    ADD CONSTRAINT aws_frauddetector_models_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_outcomes aws_frauddetector_outcomes__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_outcomes
    ADD CONSTRAINT aws_frauddetector_outcomes__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_outcomes aws_frauddetector_outcomes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_outcomes
    ADD CONSTRAINT aws_frauddetector_outcomes_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_rules aws_frauddetector_rules__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_rules
    ADD CONSTRAINT aws_frauddetector_rules__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_rules aws_frauddetector_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_rules
    ADD CONSTRAINT aws_frauddetector_rules_cqpk PRIMARY KEY (arn);


--
-- Name: aws_frauddetector_variables aws_frauddetector_variables__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_variables
    ADD CONSTRAINT aws_frauddetector_variables__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_frauddetector_variables aws_frauddetector_variables_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_frauddetector_variables
    ADD CONSTRAINT aws_frauddetector_variables_cqpk PRIMARY KEY (arn);


--
-- Name: aws_fsx_backups aws_fsx_backups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_backups
    ADD CONSTRAINT aws_fsx_backups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_fsx_backups aws_fsx_backups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_backups
    ADD CONSTRAINT aws_fsx_backups_cqpk PRIMARY KEY (account_id, region, id);


--
-- Name: aws_fsx_data_repository_associations aws_fsx_data_repository_associations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_data_repository_associations
    ADD CONSTRAINT aws_fsx_data_repository_associations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_fsx_data_repository_associations aws_fsx_data_repository_associations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_data_repository_associations
    ADD CONSTRAINT aws_fsx_data_repository_associations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_fsx_data_repository_tasks aws_fsx_data_repository_tasks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_data_repository_tasks
    ADD CONSTRAINT aws_fsx_data_repository_tasks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_fsx_data_repository_tasks aws_fsx_data_repository_tasks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_data_repository_tasks
    ADD CONSTRAINT aws_fsx_data_repository_tasks_cqpk PRIMARY KEY (arn);


--
-- Name: aws_fsx_file_caches aws_fsx_file_caches__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_file_caches
    ADD CONSTRAINT aws_fsx_file_caches__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_fsx_file_caches aws_fsx_file_caches_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_file_caches
    ADD CONSTRAINT aws_fsx_file_caches_cqpk PRIMARY KEY (arn);


--
-- Name: aws_fsx_file_systems aws_fsx_file_systems__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_file_systems
    ADD CONSTRAINT aws_fsx_file_systems__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_fsx_file_systems aws_fsx_file_systems_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_file_systems
    ADD CONSTRAINT aws_fsx_file_systems_cqpk PRIMARY KEY (arn);


--
-- Name: aws_fsx_snapshots aws_fsx_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_snapshots
    ADD CONSTRAINT aws_fsx_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_fsx_snapshots aws_fsx_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_snapshots
    ADD CONSTRAINT aws_fsx_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_fsx_storage_virtual_machines aws_fsx_storage_virtual_machines__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_storage_virtual_machines
    ADD CONSTRAINT aws_fsx_storage_virtual_machines__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_fsx_storage_virtual_machines aws_fsx_storage_virtual_machines_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_storage_virtual_machines
    ADD CONSTRAINT aws_fsx_storage_virtual_machines_cqpk PRIMARY KEY (arn);


--
-- Name: aws_fsx_volumes aws_fsx_volumes__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_volumes
    ADD CONSTRAINT aws_fsx_volumes__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_fsx_volumes aws_fsx_volumes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_fsx_volumes
    ADD CONSTRAINT aws_fsx_volumes_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glacier_data_retrieval_policies aws_glacier_data_retrieval_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_data_retrieval_policies
    ADD CONSTRAINT aws_glacier_data_retrieval_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glacier_data_retrieval_policies aws_glacier_data_retrieval_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_data_retrieval_policies
    ADD CONSTRAINT aws_glacier_data_retrieval_policies_cqpk PRIMARY KEY (account_id, region);


--
-- Name: aws_glacier_vault_access_policies aws_glacier_vault_access_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_vault_access_policies
    ADD CONSTRAINT aws_glacier_vault_access_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glacier_vault_access_policies aws_glacier_vault_access_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_vault_access_policies
    ADD CONSTRAINT aws_glacier_vault_access_policies_cqpk PRIMARY KEY (vault_arn);


--
-- Name: aws_glacier_vault_lock_policies aws_glacier_vault_lock_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_vault_lock_policies
    ADD CONSTRAINT aws_glacier_vault_lock_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glacier_vault_lock_policies aws_glacier_vault_lock_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_vault_lock_policies
    ADD CONSTRAINT aws_glacier_vault_lock_policies_cqpk PRIMARY KEY (vault_arn);


--
-- Name: aws_glacier_vault_notifications aws_glacier_vault_notifications__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_vault_notifications
    ADD CONSTRAINT aws_glacier_vault_notifications__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glacier_vault_notifications aws_glacier_vault_notifications_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_vault_notifications
    ADD CONSTRAINT aws_glacier_vault_notifications_cqpk PRIMARY KEY (vault_arn);


--
-- Name: aws_glacier_vaults aws_glacier_vaults__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_vaults
    ADD CONSTRAINT aws_glacier_vaults__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glacier_vaults aws_glacier_vaults_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glacier_vaults
    ADD CONSTRAINT aws_glacier_vaults_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_classifiers aws_glue_classifiers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_classifiers
    ADD CONSTRAINT aws_glue_classifiers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_classifiers aws_glue_classifiers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_classifiers
    ADD CONSTRAINT aws_glue_classifiers_cqpk PRIMARY KEY (account_id, region, name);


--
-- Name: aws_glue_connections aws_glue_connections__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_connections
    ADD CONSTRAINT aws_glue_connections__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_connections aws_glue_connections_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_connections
    ADD CONSTRAINT aws_glue_connections_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_crawlers aws_glue_crawlers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_crawlers
    ADD CONSTRAINT aws_glue_crawlers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_crawlers aws_glue_crawlers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_crawlers
    ADD CONSTRAINT aws_glue_crawlers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_database_table_indexes aws_glue_database_table_indexes__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_database_table_indexes
    ADD CONSTRAINT aws_glue_database_table_indexes__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_database_table_indexes aws_glue_database_table_indexes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_database_table_indexes
    ADD CONSTRAINT aws_glue_database_table_indexes_cqpk PRIMARY KEY (database_arn, database_table_name, index_name);


--
-- Name: aws_glue_database_tables aws_glue_database_tables__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_database_tables
    ADD CONSTRAINT aws_glue_database_tables__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_database_tables aws_glue_database_tables_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_database_tables
    ADD CONSTRAINT aws_glue_database_tables_cqpk PRIMARY KEY (database_arn, name);


--
-- Name: aws_glue_databases aws_glue_databases__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_databases
    ADD CONSTRAINT aws_glue_databases__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_databases aws_glue_databases_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_databases
    ADD CONSTRAINT aws_glue_databases_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_datacatalog_encryption_settings aws_glue_datacatalog_encryption_settings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_datacatalog_encryption_settings
    ADD CONSTRAINT aws_glue_datacatalog_encryption_settings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_datacatalog_encryption_settings aws_glue_datacatalog_encryption_settings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_datacatalog_encryption_settings
    ADD CONSTRAINT aws_glue_datacatalog_encryption_settings_cqpk PRIMARY KEY (account_id, region);


--
-- Name: aws_glue_dev_endpoints aws_glue_dev_endpoints__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_dev_endpoints
    ADD CONSTRAINT aws_glue_dev_endpoints__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_dev_endpoints aws_glue_dev_endpoints_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_dev_endpoints
    ADD CONSTRAINT aws_glue_dev_endpoints_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_job_runs aws_glue_job_runs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_job_runs
    ADD CONSTRAINT aws_glue_job_runs_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_glue_jobs aws_glue_jobs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_jobs
    ADD CONSTRAINT aws_glue_jobs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_jobs aws_glue_jobs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_jobs
    ADD CONSTRAINT aws_glue_jobs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_ml_transform_task_runs aws_glue_ml_transform_task_runs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_ml_transform_task_runs
    ADD CONSTRAINT aws_glue_ml_transform_task_runs_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_glue_ml_transforms aws_glue_ml_transforms__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_ml_transforms
    ADD CONSTRAINT aws_glue_ml_transforms__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_ml_transforms aws_glue_ml_transforms_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_ml_transforms
    ADD CONSTRAINT aws_glue_ml_transforms_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_registries aws_glue_registries__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_registries
    ADD CONSTRAINT aws_glue_registries__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_registries aws_glue_registries_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_registries
    ADD CONSTRAINT aws_glue_registries_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_registry_schema_versions aws_glue_registry_schema_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_registry_schema_versions
    ADD CONSTRAINT aws_glue_registry_schema_versions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_glue_registry_schemas aws_glue_registry_schemas__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_registry_schemas
    ADD CONSTRAINT aws_glue_registry_schemas__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_registry_schemas aws_glue_registry_schemas_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_registry_schemas
    ADD CONSTRAINT aws_glue_registry_schemas_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_security_configurations aws_glue_security_configurations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_security_configurations
    ADD CONSTRAINT aws_glue_security_configurations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_security_configurations aws_glue_security_configurations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_security_configurations
    ADD CONSTRAINT aws_glue_security_configurations_cqpk PRIMARY KEY (account_id, region, name);


--
-- Name: aws_glue_triggers aws_glue_triggers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_triggers
    ADD CONSTRAINT aws_glue_triggers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_triggers aws_glue_triggers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_triggers
    ADD CONSTRAINT aws_glue_triggers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_glue_workflows aws_glue_workflows__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_workflows
    ADD CONSTRAINT aws_glue_workflows__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_glue_workflows aws_glue_workflows_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_glue_workflows
    ADD CONSTRAINT aws_glue_workflows_cqpk PRIMARY KEY (arn);


--
-- Name: aws_guardduty_detector_members aws_guardduty_detector_members_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_guardduty_detector_members
    ADD CONSTRAINT aws_guardduty_detector_members_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_guardduty_detectors aws_guardduty_detectors__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_guardduty_detectors
    ADD CONSTRAINT aws_guardduty_detectors__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_guardduty_detectors aws_guardduty_detectors_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_guardduty_detectors
    ADD CONSTRAINT aws_guardduty_detectors_cqpk PRIMARY KEY (account_id, region, id);


--
-- Name: aws_iam_accounts aws_iam_accounts__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_accounts
    ADD CONSTRAINT aws_iam_accounts__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_accounts aws_iam_accounts_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_accounts
    ADD CONSTRAINT aws_iam_accounts_cqpk PRIMARY KEY (account_id);


--
-- Name: aws_iam_credential_reports aws_iam_credential_reports__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_credential_reports
    ADD CONSTRAINT aws_iam_credential_reports__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_credential_reports aws_iam_credential_reports_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_credential_reports
    ADD CONSTRAINT aws_iam_credential_reports_cqpk PRIMARY KEY (arn, user_creation_time);


--
-- Name: aws_iam_group_last_accessed_details aws_iam_group_last_accessed_details__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_group_last_accessed_details
    ADD CONSTRAINT aws_iam_group_last_accessed_details__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_group_last_accessed_details aws_iam_group_last_accessed_details_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_group_last_accessed_details
    ADD CONSTRAINT aws_iam_group_last_accessed_details_cqpk PRIMARY KEY (arn, service_namespace);


--
-- Name: aws_iam_group_policies aws_iam_group_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_group_policies
    ADD CONSTRAINT aws_iam_group_policies_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_iam_groups aws_iam_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_groups
    ADD CONSTRAINT aws_iam_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_groups aws_iam_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_groups
    ADD CONSTRAINT aws_iam_groups_cqpk PRIMARY KEY (account_id, id);


--
-- Name: aws_iam_instance_profiles aws_iam_instance_profiles__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_instance_profiles
    ADD CONSTRAINT aws_iam_instance_profiles__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_instance_profiles aws_iam_instance_profiles_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_instance_profiles
    ADD CONSTRAINT aws_iam_instance_profiles_cqpk PRIMARY KEY (account_id, id);


--
-- Name: aws_iam_openid_connect_identity_providers aws_iam_openid_connect_identity_providers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_openid_connect_identity_providers
    ADD CONSTRAINT aws_iam_openid_connect_identity_providers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_openid_connect_identity_providers aws_iam_openid_connect_identity_providers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_openid_connect_identity_providers
    ADD CONSTRAINT aws_iam_openid_connect_identity_providers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iam_password_policies aws_iam_password_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_password_policies
    ADD CONSTRAINT aws_iam_password_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_password_policies aws_iam_password_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_password_policies
    ADD CONSTRAINT aws_iam_password_policies_cqpk PRIMARY KEY (account_id);


--
-- Name: aws_iam_policies aws_iam_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_policies
    ADD CONSTRAINT aws_iam_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_policies aws_iam_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_policies
    ADD CONSTRAINT aws_iam_policies_cqpk PRIMARY KEY (account_id, id);


--
-- Name: aws_iam_policy_last_accessed_details aws_iam_policy_last_accessed_details__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_policy_last_accessed_details
    ADD CONSTRAINT aws_iam_policy_last_accessed_details__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_policy_last_accessed_details aws_iam_policy_last_accessed_details_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_policy_last_accessed_details
    ADD CONSTRAINT aws_iam_policy_last_accessed_details_cqpk PRIMARY KEY (account_id, arn, service_namespace);


--
-- Name: aws_iam_role_last_accessed_details aws_iam_role_last_accessed_details__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_role_last_accessed_details
    ADD CONSTRAINT aws_iam_role_last_accessed_details__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_role_last_accessed_details aws_iam_role_last_accessed_details_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_role_last_accessed_details
    ADD CONSTRAINT aws_iam_role_last_accessed_details_cqpk PRIMARY KEY (arn, service_namespace);


--
-- Name: aws_iam_role_policies aws_iam_role_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_role_policies
    ADD CONSTRAINT aws_iam_role_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_role_policies aws_iam_role_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_role_policies
    ADD CONSTRAINT aws_iam_role_policies_cqpk PRIMARY KEY (account_id, role_arn, policy_name);


--
-- Name: aws_iam_roles aws_iam_roles__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_roles
    ADD CONSTRAINT aws_iam_roles__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_roles aws_iam_roles_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_roles
    ADD CONSTRAINT aws_iam_roles_cqpk PRIMARY KEY (account_id, id);


--
-- Name: aws_iam_saml_identity_providers aws_iam_saml_identity_providers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_saml_identity_providers
    ADD CONSTRAINT aws_iam_saml_identity_providers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_saml_identity_providers aws_iam_saml_identity_providers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_saml_identity_providers
    ADD CONSTRAINT aws_iam_saml_identity_providers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iam_server_certificates aws_iam_server_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_server_certificates
    ADD CONSTRAINT aws_iam_server_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_server_certificates aws_iam_server_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_server_certificates
    ADD CONSTRAINT aws_iam_server_certificates_cqpk PRIMARY KEY (account_id, id);


--
-- Name: aws_iam_signing_certificates aws_iam_signing_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_signing_certificates
    ADD CONSTRAINT aws_iam_signing_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_signing_certificates aws_iam_signing_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_signing_certificates
    ADD CONSTRAINT aws_iam_signing_certificates_cqpk PRIMARY KEY (user_arn, certificate_id);


--
-- Name: aws_iam_ssh_public_keys aws_iam_ssh_public_keys__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_ssh_public_keys
    ADD CONSTRAINT aws_iam_ssh_public_keys__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_ssh_public_keys aws_iam_ssh_public_keys_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_ssh_public_keys
    ADD CONSTRAINT aws_iam_ssh_public_keys_cqpk PRIMARY KEY (ssh_public_key_id);


--
-- Name: aws_iam_user_access_keys aws_iam_user_access_keys__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_user_access_keys
    ADD CONSTRAINT aws_iam_user_access_keys__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_user_access_keys aws_iam_user_access_keys_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_user_access_keys
    ADD CONSTRAINT aws_iam_user_access_keys_cqpk PRIMARY KEY (account_id, user_arn, access_key_id);


--
-- Name: aws_iam_user_attached_policies aws_iam_user_attached_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_user_attached_policies
    ADD CONSTRAINT aws_iam_user_attached_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_user_attached_policies aws_iam_user_attached_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_user_attached_policies
    ADD CONSTRAINT aws_iam_user_attached_policies_cqpk PRIMARY KEY (account_id, user_arn, policy_name);


--
-- Name: aws_iam_user_groups aws_iam_user_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_user_groups
    ADD CONSTRAINT aws_iam_user_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_user_groups aws_iam_user_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_user_groups
    ADD CONSTRAINT aws_iam_user_groups_cqpk PRIMARY KEY (user_id, arn);


--
-- Name: aws_iam_user_last_accessed_details aws_iam_user_last_accessed_details__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_user_last_accessed_details
    ADD CONSTRAINT aws_iam_user_last_accessed_details__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_user_last_accessed_details aws_iam_user_last_accessed_details_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_user_last_accessed_details
    ADD CONSTRAINT aws_iam_user_last_accessed_details_cqpk PRIMARY KEY (arn, service_namespace);


--
-- Name: aws_iam_user_policies aws_iam_user_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_user_policies
    ADD CONSTRAINT aws_iam_user_policies_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_iam_users aws_iam_users__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_users
    ADD CONSTRAINT aws_iam_users__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_users aws_iam_users_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_users
    ADD CONSTRAINT aws_iam_users_cqpk PRIMARY KEY (id, account_id);


--
-- Name: aws_iam_virtual_mfa_devices aws_iam_virtual_mfa_devices__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_virtual_mfa_devices
    ADD CONSTRAINT aws_iam_virtual_mfa_devices__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iam_virtual_mfa_devices aws_iam_virtual_mfa_devices_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iam_virtual_mfa_devices
    ADD CONSTRAINT aws_iam_virtual_mfa_devices_cqpk PRIMARY KEY (serial_number);


--
-- Name: aws_identitystore_group_memberships aws_identitystore_group_memberships_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_identitystore_group_memberships
    ADD CONSTRAINT aws_identitystore_group_memberships_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_identitystore_groups aws_identitystore_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_identitystore_groups
    ADD CONSTRAINT aws_identitystore_groups_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_identitystore_users aws_identitystore_users_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_identitystore_users
    ADD CONSTRAINT aws_identitystore_users_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_inspector2_findings aws_inspector2_findings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_inspector2_findings
    ADD CONSTRAINT aws_inspector2_findings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_inspector2_findings aws_inspector2_findings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_inspector2_findings
    ADD CONSTRAINT aws_inspector2_findings_cqpk PRIMARY KEY (arn);


--
-- Name: aws_inspector_findings aws_inspector_findings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_inspector_findings
    ADD CONSTRAINT aws_inspector_findings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_inspector_findings aws_inspector_findings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_inspector_findings
    ADD CONSTRAINT aws_inspector_findings_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_billing_groups aws_iot_billing_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_billing_groups
    ADD CONSTRAINT aws_iot_billing_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_billing_groups aws_iot_billing_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_billing_groups
    ADD CONSTRAINT aws_iot_billing_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_ca_certificates aws_iot_ca_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_ca_certificates
    ADD CONSTRAINT aws_iot_ca_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_ca_certificates aws_iot_ca_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_ca_certificates
    ADD CONSTRAINT aws_iot_ca_certificates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_certificates aws_iot_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_certificates
    ADD CONSTRAINT aws_iot_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_certificates aws_iot_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_certificates
    ADD CONSTRAINT aws_iot_certificates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_jobs aws_iot_jobs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_jobs
    ADD CONSTRAINT aws_iot_jobs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_jobs aws_iot_jobs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_jobs
    ADD CONSTRAINT aws_iot_jobs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_policies aws_iot_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_policies
    ADD CONSTRAINT aws_iot_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_policies aws_iot_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_policies
    ADD CONSTRAINT aws_iot_policies_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_security_profiles aws_iot_security_profiles__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_security_profiles
    ADD CONSTRAINT aws_iot_security_profiles__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_security_profiles aws_iot_security_profiles_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_security_profiles
    ADD CONSTRAINT aws_iot_security_profiles_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_streams aws_iot_streams__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_streams
    ADD CONSTRAINT aws_iot_streams__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_streams aws_iot_streams_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_streams
    ADD CONSTRAINT aws_iot_streams_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_thing_groups aws_iot_thing_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_thing_groups
    ADD CONSTRAINT aws_iot_thing_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_thing_groups aws_iot_thing_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_thing_groups
    ADD CONSTRAINT aws_iot_thing_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_thing_types aws_iot_thing_types__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_thing_types
    ADD CONSTRAINT aws_iot_thing_types__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_thing_types aws_iot_thing_types_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_thing_types
    ADD CONSTRAINT aws_iot_thing_types_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_things aws_iot_things__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_things
    ADD CONSTRAINT aws_iot_things__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_things aws_iot_things_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_things
    ADD CONSTRAINT aws_iot_things_cqpk PRIMARY KEY (arn);


--
-- Name: aws_iot_topic_rules aws_iot_topic_rules__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_topic_rules
    ADD CONSTRAINT aws_iot_topic_rules__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_iot_topic_rules aws_iot_topic_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_iot_topic_rules
    ADD CONSTRAINT aws_iot_topic_rules_cqpk PRIMARY KEY (arn);


--
-- Name: aws_kafka_cluster_operations aws_kafka_cluster_operations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kafka_cluster_operations
    ADD CONSTRAINT aws_kafka_cluster_operations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_kafka_cluster_operations aws_kafka_cluster_operations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kafka_cluster_operations
    ADD CONSTRAINT aws_kafka_cluster_operations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_kafka_clusters aws_kafka_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kafka_clusters
    ADD CONSTRAINT aws_kafka_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_kafka_clusters aws_kafka_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kafka_clusters
    ADD CONSTRAINT aws_kafka_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_kafka_configurations aws_kafka_configurations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kafka_configurations
    ADD CONSTRAINT aws_kafka_configurations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_kafka_configurations aws_kafka_configurations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kafka_configurations
    ADD CONSTRAINT aws_kafka_configurations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_kafka_nodes aws_kafka_nodes__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kafka_nodes
    ADD CONSTRAINT aws_kafka_nodes__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_kafka_nodes aws_kafka_nodes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kafka_nodes
    ADD CONSTRAINT aws_kafka_nodes_cqpk PRIMARY KEY (arn);


--
-- Name: aws_kinesis_streams aws_kinesis_streams__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kinesis_streams
    ADD CONSTRAINT aws_kinesis_streams__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_kinesis_streams aws_kinesis_streams_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kinesis_streams
    ADD CONSTRAINT aws_kinesis_streams_cqpk PRIMARY KEY (arn);


--
-- Name: aws_kms_aliases aws_kms_aliases__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kms_aliases
    ADD CONSTRAINT aws_kms_aliases__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_kms_aliases aws_kms_aliases_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kms_aliases
    ADD CONSTRAINT aws_kms_aliases_cqpk PRIMARY KEY (arn);


--
-- Name: aws_kms_key_grants aws_kms_key_grants__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kms_key_grants
    ADD CONSTRAINT aws_kms_key_grants__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_kms_key_grants aws_kms_key_grants_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kms_key_grants
    ADD CONSTRAINT aws_kms_key_grants_cqpk PRIMARY KEY (key_arn, grant_id);


--
-- Name: aws_kms_key_policies aws_kms_key_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kms_key_policies
    ADD CONSTRAINT aws_kms_key_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_kms_key_policies aws_kms_key_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kms_key_policies
    ADD CONSTRAINT aws_kms_key_policies_cqpk PRIMARY KEY (key_arn, name);


--
-- Name: aws_kms_keys aws_kms_keys__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kms_keys
    ADD CONSTRAINT aws_kms_keys__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_kms_keys aws_kms_keys_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_kms_keys
    ADD CONSTRAINT aws_kms_keys_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lambda_function_aliases aws_lambda_function_aliases__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_function_aliases
    ADD CONSTRAINT aws_lambda_function_aliases__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lambda_function_aliases aws_lambda_function_aliases_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_function_aliases
    ADD CONSTRAINT aws_lambda_function_aliases_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lambda_function_concurrency_configs aws_lambda_function_concurrency_configs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_function_concurrency_configs
    ADD CONSTRAINT aws_lambda_function_concurrency_configs_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lambda_function_event_invoke_configs aws_lambda_function_event_invoke_configs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_function_event_invoke_configs
    ADD CONSTRAINT aws_lambda_function_event_invoke_configs_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lambda_function_event_source_mappings aws_lambda_function_event_source_mappings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_function_event_source_mappings
    ADD CONSTRAINT aws_lambda_function_event_source_mappings_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lambda_function_versions aws_lambda_function_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_function_versions
    ADD CONSTRAINT aws_lambda_function_versions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lambda_functions aws_lambda_functions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_functions
    ADD CONSTRAINT aws_lambda_functions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lambda_functions aws_lambda_functions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_functions
    ADD CONSTRAINT aws_lambda_functions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lambda_layer_version_policies aws_lambda_layer_version_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_layer_version_policies
    ADD CONSTRAINT aws_lambda_layer_version_policies_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lambda_layer_versions aws_lambda_layer_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_layer_versions
    ADD CONSTRAINT aws_lambda_layer_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lambda_layer_versions aws_lambda_layer_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_layer_versions
    ADD CONSTRAINT aws_lambda_layer_versions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lambda_layers aws_lambda_layers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_layers
    ADD CONSTRAINT aws_lambda_layers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lambda_layers aws_lambda_layers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_layers
    ADD CONSTRAINT aws_lambda_layers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lambda_runtimes aws_lambda_runtimes__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_runtimes
    ADD CONSTRAINT aws_lambda_runtimes__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lambda_runtimes aws_lambda_runtimes_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lambda_runtimes
    ADD CONSTRAINT aws_lambda_runtimes_cqpk PRIMARY KEY (name);


--
-- Name: aws_lightsail_alarms aws_lightsail_alarms__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_alarms
    ADD CONSTRAINT aws_lightsail_alarms__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_alarms aws_lightsail_alarms_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_alarms
    ADD CONSTRAINT aws_lightsail_alarms_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_bucket_access_keys aws_lightsail_bucket_access_keys_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_bucket_access_keys
    ADD CONSTRAINT aws_lightsail_bucket_access_keys_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lightsail_buckets aws_lightsail_buckets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_buckets
    ADD CONSTRAINT aws_lightsail_buckets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_buckets aws_lightsail_buckets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_buckets
    ADD CONSTRAINT aws_lightsail_buckets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_certificates aws_lightsail_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_certificates
    ADD CONSTRAINT aws_lightsail_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_certificates aws_lightsail_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_certificates
    ADD CONSTRAINT aws_lightsail_certificates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_container_service_deployments aws_lightsail_container_service_deployments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_container_service_deployments
    ADD CONSTRAINT aws_lightsail_container_service_deployments_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lightsail_container_service_images aws_lightsail_container_service_images_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_container_service_images
    ADD CONSTRAINT aws_lightsail_container_service_images_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lightsail_container_services aws_lightsail_container_services__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_container_services
    ADD CONSTRAINT aws_lightsail_container_services__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_container_services aws_lightsail_container_services_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_container_services
    ADD CONSTRAINT aws_lightsail_container_services_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_database_events aws_lightsail_database_events_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_database_events
    ADD CONSTRAINT aws_lightsail_database_events_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lightsail_database_log_events aws_lightsail_database_log_events_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_database_log_events
    ADD CONSTRAINT aws_lightsail_database_log_events_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lightsail_database_parameters aws_lightsail_database_parameters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_database_parameters
    ADD CONSTRAINT aws_lightsail_database_parameters_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lightsail_database_snapshots aws_lightsail_database_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_database_snapshots
    ADD CONSTRAINT aws_lightsail_database_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_database_snapshots aws_lightsail_database_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_database_snapshots
    ADD CONSTRAINT aws_lightsail_database_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_databases aws_lightsail_databases__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_databases
    ADD CONSTRAINT aws_lightsail_databases__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_databases aws_lightsail_databases_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_databases
    ADD CONSTRAINT aws_lightsail_databases_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_disk_snapshots aws_lightsail_disk_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_disk_snapshots
    ADD CONSTRAINT aws_lightsail_disk_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_disk_snapshots aws_lightsail_disk_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_disk_snapshots
    ADD CONSTRAINT aws_lightsail_disk_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_disks aws_lightsail_disks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_disks
    ADD CONSTRAINT aws_lightsail_disks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_disks aws_lightsail_disks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_disks
    ADD CONSTRAINT aws_lightsail_disks_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_distributions aws_lightsail_distributions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_distributions
    ADD CONSTRAINT aws_lightsail_distributions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_distributions aws_lightsail_distributions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_distributions
    ADD CONSTRAINT aws_lightsail_distributions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_instance_port_states aws_lightsail_instance_port_states_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_instance_port_states
    ADD CONSTRAINT aws_lightsail_instance_port_states_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_lightsail_instance_snapshots aws_lightsail_instance_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_instance_snapshots
    ADD CONSTRAINT aws_lightsail_instance_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_instance_snapshots aws_lightsail_instance_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_instance_snapshots
    ADD CONSTRAINT aws_lightsail_instance_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_instances aws_lightsail_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_instances
    ADD CONSTRAINT aws_lightsail_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_instances aws_lightsail_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_instances
    ADD CONSTRAINT aws_lightsail_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_load_balancer_tls_certificates aws_lightsail_load_balancer_tls_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_load_balancer_tls_certificates
    ADD CONSTRAINT aws_lightsail_load_balancer_tls_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_load_balancer_tls_certificates aws_lightsail_load_balancer_tls_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_load_balancer_tls_certificates
    ADD CONSTRAINT aws_lightsail_load_balancer_tls_certificates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_load_balancers aws_lightsail_load_balancers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_load_balancers
    ADD CONSTRAINT aws_lightsail_load_balancers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_load_balancers aws_lightsail_load_balancers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_load_balancers
    ADD CONSTRAINT aws_lightsail_load_balancers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_lightsail_static_ips aws_lightsail_static_ips__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_static_ips
    ADD CONSTRAINT aws_lightsail_static_ips__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_lightsail_static_ips aws_lightsail_static_ips_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_lightsail_static_ips
    ADD CONSTRAINT aws_lightsail_static_ips_cqpk PRIMARY KEY (arn);


--
-- Name: aws_mq_broker_configuration_revisions aws_mq_broker_configuration_revisions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_mq_broker_configuration_revisions
    ADD CONSTRAINT aws_mq_broker_configuration_revisions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_mq_broker_configurations aws_mq_broker_configurations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_mq_broker_configurations
    ADD CONSTRAINT aws_mq_broker_configurations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_mq_broker_configurations aws_mq_broker_configurations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_mq_broker_configurations
    ADD CONSTRAINT aws_mq_broker_configurations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_mq_broker_users aws_mq_broker_users_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_mq_broker_users
    ADD CONSTRAINT aws_mq_broker_users_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_mq_brokers aws_mq_brokers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_mq_brokers
    ADD CONSTRAINT aws_mq_brokers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_mq_brokers aws_mq_brokers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_mq_brokers
    ADD CONSTRAINT aws_mq_brokers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_mwaa_environments aws_mwaa_environments__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_mwaa_environments
    ADD CONSTRAINT aws_mwaa_environments__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_mwaa_environments aws_mwaa_environments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_mwaa_environments
    ADD CONSTRAINT aws_mwaa_environments_cqpk PRIMARY KEY (arn);


--
-- Name: aws_neptune_cluster_parameter_group_parameters aws_neptune_cluster_parameter_group_parameters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_cluster_parameter_group_parameters
    ADD CONSTRAINT aws_neptune_cluster_parameter_group_parameters_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_neptune_cluster_parameter_groups aws_neptune_cluster_parameter_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_cluster_parameter_groups
    ADD CONSTRAINT aws_neptune_cluster_parameter_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_neptune_cluster_parameter_groups aws_neptune_cluster_parameter_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_cluster_parameter_groups
    ADD CONSTRAINT aws_neptune_cluster_parameter_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_neptune_cluster_snapshots aws_neptune_cluster_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_cluster_snapshots
    ADD CONSTRAINT aws_neptune_cluster_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_neptune_cluster_snapshots aws_neptune_cluster_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_cluster_snapshots
    ADD CONSTRAINT aws_neptune_cluster_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_neptune_clusters aws_neptune_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_clusters
    ADD CONSTRAINT aws_neptune_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_neptune_clusters aws_neptune_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_clusters
    ADD CONSTRAINT aws_neptune_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_neptune_db_parameter_group_db_parameters aws_neptune_db_parameter_group_db_parameters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_db_parameter_group_db_parameters
    ADD CONSTRAINT aws_neptune_db_parameter_group_db_parameters_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_neptune_db_parameter_groups aws_neptune_db_parameter_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_db_parameter_groups
    ADD CONSTRAINT aws_neptune_db_parameter_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_neptune_db_parameter_groups aws_neptune_db_parameter_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_db_parameter_groups
    ADD CONSTRAINT aws_neptune_db_parameter_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_neptune_event_subscriptions aws_neptune_event_subscriptions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_event_subscriptions
    ADD CONSTRAINT aws_neptune_event_subscriptions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_neptune_event_subscriptions aws_neptune_event_subscriptions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_event_subscriptions
    ADD CONSTRAINT aws_neptune_event_subscriptions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_neptune_global_clusters aws_neptune_global_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_global_clusters
    ADD CONSTRAINT aws_neptune_global_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_neptune_global_clusters aws_neptune_global_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_global_clusters
    ADD CONSTRAINT aws_neptune_global_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_neptune_instances aws_neptune_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_instances
    ADD CONSTRAINT aws_neptune_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_neptune_instances aws_neptune_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_instances
    ADD CONSTRAINT aws_neptune_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_neptune_subnet_groups aws_neptune_subnet_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_subnet_groups
    ADD CONSTRAINT aws_neptune_subnet_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_neptune_subnet_groups aws_neptune_subnet_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_neptune_subnet_groups
    ADD CONSTRAINT aws_neptune_subnet_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_organization_resource_policies aws_organization_resource_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organization_resource_policies
    ADD CONSTRAINT aws_organization_resource_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_organization_resource_policies aws_organization_resource_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organization_resource_policies
    ADD CONSTRAINT aws_organization_resource_policies_cqpk PRIMARY KEY (account_id);


--
-- Name: aws_organizations aws_organizations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations
    ADD CONSTRAINT aws_organizations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_organizations_accounts aws_organizations_accounts__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_accounts
    ADD CONSTRAINT aws_organizations_accounts__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_organizations_accounts aws_organizations_accounts_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_accounts
    ADD CONSTRAINT aws_organizations_accounts_cqpk PRIMARY KEY (arn);


--
-- Name: aws_organizations aws_organizations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations
    ADD CONSTRAINT aws_organizations_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_organizations_delegated_administrators aws_organizations_delegated_administrators__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_delegated_administrators
    ADD CONSTRAINT aws_organizations_delegated_administrators__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_organizations_delegated_administrators aws_organizations_delegated_administrators_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_delegated_administrators
    ADD CONSTRAINT aws_organizations_delegated_administrators_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_organizations_delegated_services aws_organizations_delegated_services__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_delegated_services
    ADD CONSTRAINT aws_organizations_delegated_services__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_organizations_delegated_services aws_organizations_delegated_services_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_delegated_services
    ADD CONSTRAINT aws_organizations_delegated_services_cqpk PRIMARY KEY (account_id, service_principal);


--
-- Name: aws_organizations_organizational_units aws_organizations_organizational_units__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_organizational_units
    ADD CONSTRAINT aws_organizations_organizational_units__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_organizations_organizational_units aws_organizations_organizational_units_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_organizational_units
    ADD CONSTRAINT aws_organizations_organizational_units_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_organizations_policies aws_organizations_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_policies
    ADD CONSTRAINT aws_organizations_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_organizations_policies aws_organizations_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_policies
    ADD CONSTRAINT aws_organizations_policies_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_organizations_roots aws_organizations_roots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_roots
    ADD CONSTRAINT aws_organizations_roots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_organizations_roots aws_organizations_roots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_organizations_roots
    ADD CONSTRAINT aws_organizations_roots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_qldb_ledger_journal_kinesis_streams aws_qldb_ledger_journal_kinesis_streams__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_qldb_ledger_journal_kinesis_streams
    ADD CONSTRAINT aws_qldb_ledger_journal_kinesis_streams__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_qldb_ledger_journal_kinesis_streams aws_qldb_ledger_journal_kinesis_streams_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_qldb_ledger_journal_kinesis_streams
    ADD CONSTRAINT aws_qldb_ledger_journal_kinesis_streams_cqpk PRIMARY KEY (arn);


--
-- Name: aws_qldb_ledger_journal_s3_exports aws_qldb_ledger_journal_s3_exports_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_qldb_ledger_journal_s3_exports
    ADD CONSTRAINT aws_qldb_ledger_journal_s3_exports_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_qldb_ledgers aws_qldb_ledgers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_qldb_ledgers
    ADD CONSTRAINT aws_qldb_ledgers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_qldb_ledgers aws_qldb_ledgers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_qldb_ledgers
    ADD CONSTRAINT aws_qldb_ledgers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_quicksight_analyses aws_quicksight_analyses__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_analyses
    ADD CONSTRAINT aws_quicksight_analyses__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_analyses aws_quicksight_analyses_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_analyses
    ADD CONSTRAINT aws_quicksight_analyses_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_quicksight_dashboards aws_quicksight_dashboards__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_dashboards
    ADD CONSTRAINT aws_quicksight_dashboards__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_dashboards aws_quicksight_dashboards_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_dashboards
    ADD CONSTRAINT aws_quicksight_dashboards_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_quicksight_data_sets aws_quicksight_data_sets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_data_sets
    ADD CONSTRAINT aws_quicksight_data_sets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_data_sets aws_quicksight_data_sets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_data_sets
    ADD CONSTRAINT aws_quicksight_data_sets_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_quicksight_data_sources aws_quicksight_data_sources__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_data_sources
    ADD CONSTRAINT aws_quicksight_data_sources__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_data_sources aws_quicksight_data_sources_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_data_sources
    ADD CONSTRAINT aws_quicksight_data_sources_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_quicksight_folders aws_quicksight_folders__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_folders
    ADD CONSTRAINT aws_quicksight_folders__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_folders aws_quicksight_folders_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_folders
    ADD CONSTRAINT aws_quicksight_folders_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_quicksight_group_members aws_quicksight_group_members__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_group_members
    ADD CONSTRAINT aws_quicksight_group_members__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_group_members aws_quicksight_group_members_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_group_members
    ADD CONSTRAINT aws_quicksight_group_members_cqpk PRIMARY KEY (account_id, region, group_arn, arn);


--
-- Name: aws_quicksight_groups aws_quicksight_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_groups
    ADD CONSTRAINT aws_quicksight_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_groups aws_quicksight_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_groups
    ADD CONSTRAINT aws_quicksight_groups_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_quicksight_ingestions aws_quicksight_ingestions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_ingestions
    ADD CONSTRAINT aws_quicksight_ingestions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_ingestions aws_quicksight_ingestions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_ingestions
    ADD CONSTRAINT aws_quicksight_ingestions_cqpk PRIMARY KEY (account_id, region, data_set_arn, arn);


--
-- Name: aws_quicksight_templates aws_quicksight_templates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_templates
    ADD CONSTRAINT aws_quicksight_templates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_templates aws_quicksight_templates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_templates
    ADD CONSTRAINT aws_quicksight_templates_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_quicksight_users aws_quicksight_users__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_users
    ADD CONSTRAINT aws_quicksight_users__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_quicksight_users aws_quicksight_users_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_quicksight_users
    ADD CONSTRAINT aws_quicksight_users_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_ram_principals aws_ram_principals__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_principals
    ADD CONSTRAINT aws_ram_principals__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ram_principals aws_ram_principals_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_principals
    ADD CONSTRAINT aws_ram_principals_cqpk PRIMARY KEY (account_id, region, id, resource_share_arn);


--
-- Name: aws_ram_resource_share_associations aws_ram_resource_share_associations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_share_associations
    ADD CONSTRAINT aws_ram_resource_share_associations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ram_resource_share_associations aws_ram_resource_share_associations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_share_associations
    ADD CONSTRAINT aws_ram_resource_share_associations_cqpk PRIMARY KEY (associated_entity, resource_share_arn);


--
-- Name: aws_ram_resource_share_invitations aws_ram_resource_share_invitations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_share_invitations
    ADD CONSTRAINT aws_ram_resource_share_invitations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ram_resource_share_invitations aws_ram_resource_share_invitations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_share_invitations
    ADD CONSTRAINT aws_ram_resource_share_invitations_cqpk PRIMARY KEY (account_id, region, arn, receiver_combined);


--
-- Name: aws_ram_resource_share_permissions aws_ram_resource_share_permissions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_share_permissions
    ADD CONSTRAINT aws_ram_resource_share_permissions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ram_resource_share_permissions aws_ram_resource_share_permissions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_share_permissions
    ADD CONSTRAINT aws_ram_resource_share_permissions_cqpk PRIMARY KEY (account_id, region, arn, version);


--
-- Name: aws_ram_resource_shares aws_ram_resource_shares__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_shares
    ADD CONSTRAINT aws_ram_resource_shares__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ram_resource_shares aws_ram_resource_shares_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_shares
    ADD CONSTRAINT aws_ram_resource_shares_cqpk PRIMARY KEY (account_id, region, arn);


--
-- Name: aws_ram_resource_types aws_ram_resource_types__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_types
    ADD CONSTRAINT aws_ram_resource_types__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ram_resource_types aws_ram_resource_types_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resource_types
    ADD CONSTRAINT aws_ram_resource_types_cqpk PRIMARY KEY (account_id, region, resource_type, service_name);


--
-- Name: aws_ram_resources aws_ram_resources__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resources
    ADD CONSTRAINT aws_ram_resources__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ram_resources aws_ram_resources_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ram_resources
    ADD CONSTRAINT aws_ram_resources_cqpk PRIMARY KEY (account_id, region, arn, resource_share_arn);


--
-- Name: aws_rds_certificates aws_rds_certificates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_certificates
    ADD CONSTRAINT aws_rds_certificates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_certificates aws_rds_certificates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_certificates
    ADD CONSTRAINT aws_rds_certificates_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_rds_cluster_backtracks aws_rds_cluster_backtracks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_cluster_backtracks
    ADD CONSTRAINT aws_rds_cluster_backtracks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_cluster_backtracks aws_rds_cluster_backtracks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_cluster_backtracks
    ADD CONSTRAINT aws_rds_cluster_backtracks_cqpk PRIMARY KEY (db_cluster_arn, backtrack_identifier);


--
-- Name: aws_rds_cluster_parameter_group_parameters aws_rds_cluster_parameter_group_parameters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_cluster_parameter_group_parameters
    ADD CONSTRAINT aws_rds_cluster_parameter_group_parameters_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_rds_cluster_parameter_groups aws_rds_cluster_parameter_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_cluster_parameter_groups
    ADD CONSTRAINT aws_rds_cluster_parameter_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_cluster_parameter_groups aws_rds_cluster_parameter_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_cluster_parameter_groups
    ADD CONSTRAINT aws_rds_cluster_parameter_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_cluster_parameters aws_rds_cluster_parameters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_cluster_parameters
    ADD CONSTRAINT aws_rds_cluster_parameters_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_rds_cluster_snapshots aws_rds_cluster_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_cluster_snapshots
    ADD CONSTRAINT aws_rds_cluster_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_cluster_snapshots aws_rds_cluster_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_cluster_snapshots
    ADD CONSTRAINT aws_rds_cluster_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_clusters aws_rds_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_clusters
    ADD CONSTRAINT aws_rds_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_clusters aws_rds_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_clusters
    ADD CONSTRAINT aws_rds_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_db_parameter_group_db_parameters aws_rds_db_parameter_group_db_parameters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_db_parameter_group_db_parameters
    ADD CONSTRAINT aws_rds_db_parameter_group_db_parameters_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_rds_db_parameter_groups aws_rds_db_parameter_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_db_parameter_groups
    ADD CONSTRAINT aws_rds_db_parameter_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_db_parameter_groups aws_rds_db_parameter_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_db_parameter_groups
    ADD CONSTRAINT aws_rds_db_parameter_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_db_security_groups aws_rds_db_security_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_db_security_groups
    ADD CONSTRAINT aws_rds_db_security_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_db_security_groups aws_rds_db_security_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_db_security_groups
    ADD CONSTRAINT aws_rds_db_security_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_db_snapshots aws_rds_db_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_db_snapshots
    ADD CONSTRAINT aws_rds_db_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_db_snapshots aws_rds_db_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_db_snapshots
    ADD CONSTRAINT aws_rds_db_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_engine_versions aws_rds_engine_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_engine_versions
    ADD CONSTRAINT aws_rds_engine_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_engine_versions aws_rds_engine_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_engine_versions
    ADD CONSTRAINT aws_rds_engine_versions_cqpk PRIMARY KEY (account_id, region, _engine_version_hash);


--
-- Name: aws_rds_event_subscriptions aws_rds_event_subscriptions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_event_subscriptions
    ADD CONSTRAINT aws_rds_event_subscriptions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_event_subscriptions aws_rds_event_subscriptions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_event_subscriptions
    ADD CONSTRAINT aws_rds_event_subscriptions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_events aws_rds_events_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_events
    ADD CONSTRAINT aws_rds_events_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_rds_instances aws_rds_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_instances
    ADD CONSTRAINT aws_rds_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_instances aws_rds_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_instances
    ADD CONSTRAINT aws_rds_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_option_groups aws_rds_option_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_option_groups
    ADD CONSTRAINT aws_rds_option_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_option_groups aws_rds_option_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_option_groups
    ADD CONSTRAINT aws_rds_option_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_reserved_instances aws_rds_reserved_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_reserved_instances
    ADD CONSTRAINT aws_rds_reserved_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_reserved_instances aws_rds_reserved_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_reserved_instances
    ADD CONSTRAINT aws_rds_reserved_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_rds_subnet_groups aws_rds_subnet_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_subnet_groups
    ADD CONSTRAINT aws_rds_subnet_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_rds_subnet_groups aws_rds_subnet_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_rds_subnet_groups
    ADD CONSTRAINT aws_rds_subnet_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_redshift_cluster_parameter_groups aws_redshift_cluster_parameter_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_cluster_parameter_groups
    ADD CONSTRAINT aws_redshift_cluster_parameter_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_redshift_cluster_parameter_groups aws_redshift_cluster_parameter_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_cluster_parameter_groups
    ADD CONSTRAINT aws_redshift_cluster_parameter_groups_cqpk PRIMARY KEY (cluster_arn, parameter_group_name);


--
-- Name: aws_redshift_cluster_parameters aws_redshift_cluster_parameters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_cluster_parameters
    ADD CONSTRAINT aws_redshift_cluster_parameters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_redshift_cluster_parameters aws_redshift_cluster_parameters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_cluster_parameters
    ADD CONSTRAINT aws_redshift_cluster_parameters_cqpk PRIMARY KEY (cluster_arn, parameter_name);


--
-- Name: aws_redshift_clusters aws_redshift_clusters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_clusters
    ADD CONSTRAINT aws_redshift_clusters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_redshift_clusters aws_redshift_clusters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_clusters
    ADD CONSTRAINT aws_redshift_clusters_cqpk PRIMARY KEY (arn);


--
-- Name: aws_redshift_event_subscriptions aws_redshift_event_subscriptions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_event_subscriptions
    ADD CONSTRAINT aws_redshift_event_subscriptions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_redshift_event_subscriptions aws_redshift_event_subscriptions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_event_subscriptions
    ADD CONSTRAINT aws_redshift_event_subscriptions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_redshift_snapshots aws_redshift_snapshots__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_snapshots
    ADD CONSTRAINT aws_redshift_snapshots__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_redshift_snapshots aws_redshift_snapshots_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_snapshots
    ADD CONSTRAINT aws_redshift_snapshots_cqpk PRIMARY KEY (arn);


--
-- Name: aws_redshift_subnet_groups aws_redshift_subnet_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_subnet_groups
    ADD CONSTRAINT aws_redshift_subnet_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_redshift_subnet_groups aws_redshift_subnet_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_redshift_subnet_groups
    ADD CONSTRAINT aws_redshift_subnet_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_regions aws_regions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_regions
    ADD CONSTRAINT aws_regions_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_resiliencehub_alarm_recommendations aws_resiliencehub_alarm_recommendations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_alarm_recommendations
    ADD CONSTRAINT aws_resiliencehub_alarm_recommendations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_alarm_recommendations aws_resiliencehub_alarm_recommendations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_alarm_recommendations
    ADD CONSTRAINT aws_resiliencehub_alarm_recommendations_cqpk PRIMARY KEY (app_arn, assessment_arn, recommendation_id);


--
-- Name: aws_resiliencehub_app_assessments aws_resiliencehub_app_assessments__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_assessments
    ADD CONSTRAINT aws_resiliencehub_app_assessments__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_app_assessments aws_resiliencehub_app_assessments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_assessments
    ADD CONSTRAINT aws_resiliencehub_app_assessments_cqpk PRIMARY KEY (app_arn, arn);


--
-- Name: aws_resiliencehub_app_component_compliances aws_resiliencehub_app_component_compliances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_component_compliances
    ADD CONSTRAINT aws_resiliencehub_app_component_compliances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_app_component_compliances aws_resiliencehub_app_component_compliances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_component_compliances
    ADD CONSTRAINT aws_resiliencehub_app_component_compliances_cqpk PRIMARY KEY (app_arn, assessment_arn, app_component_name);


--
-- Name: aws_resiliencehub_app_version_resource_mappings aws_resiliencehub_app_version_resource_mappings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_version_resource_mappings
    ADD CONSTRAINT aws_resiliencehub_app_version_resource_mappings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_app_version_resource_mappings aws_resiliencehub_app_version_resource_mappings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_version_resource_mappings
    ADD CONSTRAINT aws_resiliencehub_app_version_resource_mappings_cqpk PRIMARY KEY (app_arn, app_version, physical_resource_identifier);


--
-- Name: aws_resiliencehub_app_version_resources aws_resiliencehub_app_version_resources__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_version_resources
    ADD CONSTRAINT aws_resiliencehub_app_version_resources__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_app_version_resources aws_resiliencehub_app_version_resources_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_version_resources
    ADD CONSTRAINT aws_resiliencehub_app_version_resources_cqpk PRIMARY KEY (app_arn, app_version, physical_resource_identifier);


--
-- Name: aws_resiliencehub_app_versions aws_resiliencehub_app_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_versions
    ADD CONSTRAINT aws_resiliencehub_app_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_app_versions aws_resiliencehub_app_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_app_versions
    ADD CONSTRAINT aws_resiliencehub_app_versions_cqpk PRIMARY KEY (app_arn, app_version);


--
-- Name: aws_resiliencehub_apps aws_resiliencehub_apps__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_apps
    ADD CONSTRAINT aws_resiliencehub_apps__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_apps aws_resiliencehub_apps_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_apps
    ADD CONSTRAINT aws_resiliencehub_apps_cqpk PRIMARY KEY (arn);


--
-- Name: aws_resiliencehub_component_recommendations aws_resiliencehub_component_recommendations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_component_recommendations
    ADD CONSTRAINT aws_resiliencehub_component_recommendations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_component_recommendations aws_resiliencehub_component_recommendations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_component_recommendations
    ADD CONSTRAINT aws_resiliencehub_component_recommendations_cqpk PRIMARY KEY (app_arn, assessment_arn, app_component_name);


--
-- Name: aws_resiliencehub_recommendation_templates aws_resiliencehub_recommendation_templates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_recommendation_templates
    ADD CONSTRAINT aws_resiliencehub_recommendation_templates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_recommendation_templates aws_resiliencehub_recommendation_templates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_recommendation_templates
    ADD CONSTRAINT aws_resiliencehub_recommendation_templates_cqpk PRIMARY KEY (arn, assessment_arn, app_arn);


--
-- Name: aws_resiliencehub_resiliency_policies aws_resiliencehub_resiliency_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_resiliency_policies
    ADD CONSTRAINT aws_resiliencehub_resiliency_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_resiliency_policies aws_resiliencehub_resiliency_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_resiliency_policies
    ADD CONSTRAINT aws_resiliencehub_resiliency_policies_cqpk PRIMARY KEY (arn);


--
-- Name: aws_resiliencehub_sop_recommendations aws_resiliencehub_sop_recommendations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_sop_recommendations
    ADD CONSTRAINT aws_resiliencehub_sop_recommendations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_sop_recommendations aws_resiliencehub_sop_recommendations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_sop_recommendations
    ADD CONSTRAINT aws_resiliencehub_sop_recommendations_cqpk PRIMARY KEY (app_arn, assessment_arn, recommendation_id);


--
-- Name: aws_resiliencehub_suggested_resiliency_policies aws_resiliencehub_suggested_resiliency_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_suggested_resiliency_policies
    ADD CONSTRAINT aws_resiliencehub_suggested_resiliency_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_suggested_resiliency_policies aws_resiliencehub_suggested_resiliency_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_suggested_resiliency_policies
    ADD CONSTRAINT aws_resiliencehub_suggested_resiliency_policies_cqpk PRIMARY KEY (arn);


--
-- Name: aws_resiliencehub_test_recommendations aws_resiliencehub_test_recommendations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_test_recommendations
    ADD CONSTRAINT aws_resiliencehub_test_recommendations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resiliencehub_test_recommendations aws_resiliencehub_test_recommendations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resiliencehub_test_recommendations
    ADD CONSTRAINT aws_resiliencehub_test_recommendations_cqpk PRIMARY KEY (app_arn, assessment_arn, recommendation_id);


--
-- Name: aws_resourcegroups_resource_groups aws_resourcegroups_resource_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resourcegroups_resource_groups
    ADD CONSTRAINT aws_resourcegroups_resource_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_resourcegroups_resource_groups aws_resourcegroups_resource_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_resourcegroups_resource_groups
    ADD CONSTRAINT aws_resourcegroups_resource_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_route53_delegation_sets aws_route53_delegation_sets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_delegation_sets
    ADD CONSTRAINT aws_route53_delegation_sets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_route53_delegation_sets aws_route53_delegation_sets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_delegation_sets
    ADD CONSTRAINT aws_route53_delegation_sets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_route53_domains aws_route53_domains__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_domains
    ADD CONSTRAINT aws_route53_domains__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_route53_domains aws_route53_domains_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_domains
    ADD CONSTRAINT aws_route53_domains_cqpk PRIMARY KEY (account_id, domain_name);


--
-- Name: aws_route53_health_checks aws_route53_health_checks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_health_checks
    ADD CONSTRAINT aws_route53_health_checks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_route53_health_checks aws_route53_health_checks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_health_checks
    ADD CONSTRAINT aws_route53_health_checks_cqpk PRIMARY KEY (arn);


--
-- Name: aws_route53_hosted_zone_query_logging_configs aws_route53_hosted_zone_query_logging_configs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_hosted_zone_query_logging_configs
    ADD CONSTRAINT aws_route53_hosted_zone_query_logging_configs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_route53_hosted_zone_query_logging_configs aws_route53_hosted_zone_query_logging_configs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_hosted_zone_query_logging_configs
    ADD CONSTRAINT aws_route53_hosted_zone_query_logging_configs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_route53_hosted_zone_resource_record_sets aws_route53_hosted_zone_resource_record_sets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_hosted_zone_resource_record_sets
    ADD CONSTRAINT aws_route53_hosted_zone_resource_record_sets_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_route53_hosted_zone_traffic_policy_instances aws_route53_hosted_zone_traffic_policy_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_hosted_zone_traffic_policy_instances
    ADD CONSTRAINT aws_route53_hosted_zone_traffic_policy_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_route53_hosted_zone_traffic_policy_instances aws_route53_hosted_zone_traffic_policy_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_hosted_zone_traffic_policy_instances
    ADD CONSTRAINT aws_route53_hosted_zone_traffic_policy_instances_cqpk PRIMARY KEY (account_id, arn);


--
-- Name: aws_route53_hosted_zones aws_route53_hosted_zones__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_hosted_zones
    ADD CONSTRAINT aws_route53_hosted_zones__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_route53_hosted_zones aws_route53_hosted_zones_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_hosted_zones
    ADD CONSTRAINT aws_route53_hosted_zones_cqpk PRIMARY KEY (arn);


--
-- Name: aws_route53_operations aws_route53_operations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_operations
    ADD CONSTRAINT aws_route53_operations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_route53_operations aws_route53_operations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_operations
    ADD CONSTRAINT aws_route53_operations_cqpk PRIMARY KEY (account_id, operation_id, status, submitted_date, type);


--
-- Name: aws_route53_traffic_policies aws_route53_traffic_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_traffic_policies
    ADD CONSTRAINT aws_route53_traffic_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_route53_traffic_policies aws_route53_traffic_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_traffic_policies
    ADD CONSTRAINT aws_route53_traffic_policies_cqpk PRIMARY KEY (arn);


--
-- Name: aws_route53_traffic_policy_versions aws_route53_traffic_policy_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_traffic_policy_versions
    ADD CONSTRAINT aws_route53_traffic_policy_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_route53_traffic_policy_versions aws_route53_traffic_policy_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_route53_traffic_policy_versions
    ADD CONSTRAINT aws_route53_traffic_policy_versions_cqpk PRIMARY KEY (traffic_policy_arn, id, version);


--
-- Name: aws_s3_access_points aws_s3_access_points__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_access_points
    ADD CONSTRAINT aws_s3_access_points__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_s3_access_points aws_s3_access_points_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_access_points
    ADD CONSTRAINT aws_s3_access_points_cqpk PRIMARY KEY (arn);


--
-- Name: aws_s3_accounts aws_s3_accounts__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_accounts
    ADD CONSTRAINT aws_s3_accounts__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_s3_accounts aws_s3_accounts_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_accounts
    ADD CONSTRAINT aws_s3_accounts_cqpk PRIMARY KEY (account_id);


--
-- Name: aws_s3_bucket_cors_rules aws_s3_bucket_cors_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_bucket_cors_rules
    ADD CONSTRAINT aws_s3_bucket_cors_rules_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_s3_bucket_encryption_rules aws_s3_bucket_encryption_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_bucket_encryption_rules
    ADD CONSTRAINT aws_s3_bucket_encryption_rules_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_s3_bucket_grants aws_s3_bucket_grants__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_bucket_grants
    ADD CONSTRAINT aws_s3_bucket_grants__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_s3_bucket_grants aws_s3_bucket_grants_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_bucket_grants
    ADD CONSTRAINT aws_s3_bucket_grants_cqpk PRIMARY KEY (bucket_arn, grantee_type, grantee_id, permission);


--
-- Name: aws_s3_bucket_lifecycles aws_s3_bucket_lifecycles_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_bucket_lifecycles
    ADD CONSTRAINT aws_s3_bucket_lifecycles_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_s3_bucket_websites aws_s3_bucket_websites_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_bucket_websites
    ADD CONSTRAINT aws_s3_bucket_websites_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_s3_buckets aws_s3_buckets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_buckets
    ADD CONSTRAINT aws_s3_buckets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_s3_buckets aws_s3_buckets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_s3_buckets
    ADD CONSTRAINT aws_s3_buckets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_sagemaker_apps aws_sagemaker_apps__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_apps
    ADD CONSTRAINT aws_sagemaker_apps__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_sagemaker_apps aws_sagemaker_apps_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_apps
    ADD CONSTRAINT aws_sagemaker_apps_cqpk PRIMARY KEY (arn);


--
-- Name: aws_sagemaker_endpoint_configurations aws_sagemaker_endpoint_configurations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_endpoint_configurations
    ADD CONSTRAINT aws_sagemaker_endpoint_configurations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_sagemaker_endpoint_configurations aws_sagemaker_endpoint_configurations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_endpoint_configurations
    ADD CONSTRAINT aws_sagemaker_endpoint_configurations_cqpk PRIMARY KEY (arn);


--
-- Name: aws_sagemaker_models aws_sagemaker_models__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_models
    ADD CONSTRAINT aws_sagemaker_models__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_sagemaker_models aws_sagemaker_models_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_models
    ADD CONSTRAINT aws_sagemaker_models_cqpk PRIMARY KEY (arn);


--
-- Name: aws_sagemaker_notebook_instances aws_sagemaker_notebook_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_notebook_instances
    ADD CONSTRAINT aws_sagemaker_notebook_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_sagemaker_notebook_instances aws_sagemaker_notebook_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_notebook_instances
    ADD CONSTRAINT aws_sagemaker_notebook_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_sagemaker_training_jobs aws_sagemaker_training_jobs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_training_jobs
    ADD CONSTRAINT aws_sagemaker_training_jobs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_sagemaker_training_jobs aws_sagemaker_training_jobs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sagemaker_training_jobs
    ADD CONSTRAINT aws_sagemaker_training_jobs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_savingsplans_plans aws_savingsplans_plans__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_savingsplans_plans
    ADD CONSTRAINT aws_savingsplans_plans__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_savingsplans_plans aws_savingsplans_plans_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_savingsplans_plans
    ADD CONSTRAINT aws_savingsplans_plans_cqpk PRIMARY KEY (arn);


--
-- Name: aws_scheduler_schedule_groups aws_scheduler_schedule_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_scheduler_schedule_groups
    ADD CONSTRAINT aws_scheduler_schedule_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_scheduler_schedule_groups aws_scheduler_schedule_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_scheduler_schedule_groups
    ADD CONSTRAINT aws_scheduler_schedule_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_scheduler_schedules aws_scheduler_schedules__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_scheduler_schedules
    ADD CONSTRAINT aws_scheduler_schedules__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_scheduler_schedules aws_scheduler_schedules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_scheduler_schedules
    ADD CONSTRAINT aws_scheduler_schedules_cqpk PRIMARY KEY (arn);


--
-- Name: aws_secretsmanager_secret_versions aws_secretsmanager_secret_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_secretsmanager_secret_versions
    ADD CONSTRAINT aws_secretsmanager_secret_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_secretsmanager_secret_versions aws_secretsmanager_secret_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_secretsmanager_secret_versions
    ADD CONSTRAINT aws_secretsmanager_secret_versions_cqpk PRIMARY KEY (secret_arn, version_id);


--
-- Name: aws_secretsmanager_secrets aws_secretsmanager_secrets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_secretsmanager_secrets
    ADD CONSTRAINT aws_secretsmanager_secrets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_secretsmanager_secrets aws_secretsmanager_secrets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_secretsmanager_secrets
    ADD CONSTRAINT aws_secretsmanager_secrets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_securityhub_findings aws_securityhub_findings__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_securityhub_findings
    ADD CONSTRAINT aws_securityhub_findings__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_securityhub_findings aws_securityhub_findings_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_securityhub_findings
    ADD CONSTRAINT aws_securityhub_findings_cqpk PRIMARY KEY (request_account_id, request_region, aws_account_id, created_at, description, generator_id, id, product_arn, schema_version, title, region);


--
-- Name: aws_servicecatalog_portfolios aws_servicecatalog_portfolios__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicecatalog_portfolios
    ADD CONSTRAINT aws_servicecatalog_portfolios__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_servicecatalog_portfolios aws_servicecatalog_portfolios_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicecatalog_portfolios
    ADD CONSTRAINT aws_servicecatalog_portfolios_cqpk PRIMARY KEY (arn);


--
-- Name: aws_servicecatalog_products aws_servicecatalog_products__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicecatalog_products
    ADD CONSTRAINT aws_servicecatalog_products__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_servicecatalog_products aws_servicecatalog_products_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicecatalog_products
    ADD CONSTRAINT aws_servicecatalog_products_cqpk PRIMARY KEY (arn);


--
-- Name: aws_servicecatalog_provisioned_products aws_servicecatalog_provisioned_products__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicecatalog_provisioned_products
    ADD CONSTRAINT aws_servicecatalog_provisioned_products__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_servicecatalog_provisioned_products aws_servicecatalog_provisioned_products_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicecatalog_provisioned_products
    ADD CONSTRAINT aws_servicecatalog_provisioned_products_cqpk PRIMARY KEY (arn);


--
-- Name: aws_servicequotas_quotas aws_servicequotas_quotas__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicequotas_quotas
    ADD CONSTRAINT aws_servicequotas_quotas__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_servicequotas_quotas aws_servicequotas_quotas_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicequotas_quotas
    ADD CONSTRAINT aws_servicequotas_quotas_cqpk PRIMARY KEY (arn);


--
-- Name: aws_servicequotas_services aws_servicequotas_services__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicequotas_services
    ADD CONSTRAINT aws_servicequotas_services__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_servicequotas_services aws_servicequotas_services_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_servicequotas_services
    ADD CONSTRAINT aws_servicequotas_services_cqpk PRIMARY KEY (account_id, region, service_code, service_name);


--
-- Name: aws_ses_active_receipt_rule_sets aws_ses_active_receipt_rule_sets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_active_receipt_rule_sets
    ADD CONSTRAINT aws_ses_active_receipt_rule_sets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ses_active_receipt_rule_sets aws_ses_active_receipt_rule_sets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_active_receipt_rule_sets
    ADD CONSTRAINT aws_ses_active_receipt_rule_sets_cqpk PRIMARY KEY (account_id, region, name);


--
-- Name: aws_ses_configuration_set_event_destinations aws_ses_configuration_set_event_destinations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_configuration_set_event_destinations
    ADD CONSTRAINT aws_ses_configuration_set_event_destinations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ses_configuration_set_event_destinations aws_ses_configuration_set_event_destinations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_configuration_set_event_destinations
    ADD CONSTRAINT aws_ses_configuration_set_event_destinations_cqpk PRIMARY KEY (account_id, region, configuration_set_name, name);


--
-- Name: aws_ses_configuration_sets aws_ses_configuration_sets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_configuration_sets
    ADD CONSTRAINT aws_ses_configuration_sets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ses_configuration_sets aws_ses_configuration_sets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_configuration_sets
    ADD CONSTRAINT aws_ses_configuration_sets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ses_contact_lists aws_ses_contact_lists__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_contact_lists
    ADD CONSTRAINT aws_ses_contact_lists__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ses_contact_lists aws_ses_contact_lists_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_contact_lists
    ADD CONSTRAINT aws_ses_contact_lists_cqpk PRIMARY KEY (account_id, region, name);


--
-- Name: aws_ses_custom_verification_email_templates aws_ses_custom_verification_email_templates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_custom_verification_email_templates
    ADD CONSTRAINT aws_ses_custom_verification_email_templates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ses_custom_verification_email_templates aws_ses_custom_verification_email_templates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_custom_verification_email_templates
    ADD CONSTRAINT aws_ses_custom_verification_email_templates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ses_identities aws_ses_identities__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_identities
    ADD CONSTRAINT aws_ses_identities__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ses_identities aws_ses_identities_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_identities
    ADD CONSTRAINT aws_ses_identities_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ses_templates aws_ses_templates__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_templates
    ADD CONSTRAINT aws_ses_templates__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ses_templates aws_ses_templates_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ses_templates
    ADD CONSTRAINT aws_ses_templates_cqpk PRIMARY KEY (arn);


--
-- Name: aws_shield_attacks aws_shield_attacks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shield_attacks
    ADD CONSTRAINT aws_shield_attacks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_shield_attacks aws_shield_attacks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shield_attacks
    ADD CONSTRAINT aws_shield_attacks_cqpk PRIMARY KEY (id);


--
-- Name: aws_shield_protection_groups aws_shield_protection_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shield_protection_groups
    ADD CONSTRAINT aws_shield_protection_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_shield_protection_groups aws_shield_protection_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shield_protection_groups
    ADD CONSTRAINT aws_shield_protection_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_shield_protections aws_shield_protections__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shield_protections
    ADD CONSTRAINT aws_shield_protections__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_shield_protections aws_shield_protections_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shield_protections
    ADD CONSTRAINT aws_shield_protections_cqpk PRIMARY KEY (arn);


--
-- Name: aws_shield_subscriptions aws_shield_subscriptions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shield_subscriptions
    ADD CONSTRAINT aws_shield_subscriptions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_shield_subscriptions aws_shield_subscriptions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_shield_subscriptions
    ADD CONSTRAINT aws_shield_subscriptions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_sns_subscriptions aws_sns_subscriptions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sns_subscriptions
    ADD CONSTRAINT aws_sns_subscriptions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_sns_subscriptions aws_sns_subscriptions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sns_subscriptions
    ADD CONSTRAINT aws_sns_subscriptions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_sns_topics aws_sns_topics__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sns_topics
    ADD CONSTRAINT aws_sns_topics__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_sns_topics aws_sns_topics_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sns_topics
    ADD CONSTRAINT aws_sns_topics_cqpk PRIMARY KEY (arn);


--
-- Name: aws_sqs_queues aws_sqs_queues__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sqs_queues
    ADD CONSTRAINT aws_sqs_queues__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_sqs_queues aws_sqs_queues_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_sqs_queues
    ADD CONSTRAINT aws_sqs_queues_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ssm_associations aws_ssm_associations__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_associations
    ADD CONSTRAINT aws_ssm_associations__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_associations aws_ssm_associations_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_associations
    ADD CONSTRAINT aws_ssm_associations_cqpk PRIMARY KEY (account_id, region, association_id);


--
-- Name: aws_ssm_compliance_summary_items aws_ssm_compliance_summary_items__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_compliance_summary_items
    ADD CONSTRAINT aws_ssm_compliance_summary_items__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_compliance_summary_items aws_ssm_compliance_summary_items_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_compliance_summary_items
    ADD CONSTRAINT aws_ssm_compliance_summary_items_cqpk PRIMARY KEY (account_id, region, compliance_type);


--
-- Name: aws_ssm_document_versions aws_ssm_document_versions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_document_versions
    ADD CONSTRAINT aws_ssm_document_versions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_document_versions aws_ssm_document_versions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_document_versions
    ADD CONSTRAINT aws_ssm_document_versions_cqpk PRIMARY KEY (document_arn, document_version);


--
-- Name: aws_ssm_documents aws_ssm_documents__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_documents
    ADD CONSTRAINT aws_ssm_documents__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_documents aws_ssm_documents_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_documents
    ADD CONSTRAINT aws_ssm_documents_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ssm_instance_compliance_items aws_ssm_instance_compliance_items__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_instance_compliance_items
    ADD CONSTRAINT aws_ssm_instance_compliance_items__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_instance_compliance_items aws_ssm_instance_compliance_items_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_instance_compliance_items
    ADD CONSTRAINT aws_ssm_instance_compliance_items_cqpk PRIMARY KEY (id, instance_arn);


--
-- Name: aws_ssm_instance_patches aws_ssm_instance_patches__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_instance_patches
    ADD CONSTRAINT aws_ssm_instance_patches__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_instance_patches aws_ssm_instance_patches_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_instance_patches
    ADD CONSTRAINT aws_ssm_instance_patches_cqpk PRIMARY KEY (account_id, region, kb_id);


--
-- Name: aws_ssm_instances aws_ssm_instances__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_instances
    ADD CONSTRAINT aws_ssm_instances__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_instances aws_ssm_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_instances
    ADD CONSTRAINT aws_ssm_instances_cqpk PRIMARY KEY (arn);


--
-- Name: aws_ssm_inventories aws_ssm_inventories__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_inventories
    ADD CONSTRAINT aws_ssm_inventories__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_inventories aws_ssm_inventories_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_inventories
    ADD CONSTRAINT aws_ssm_inventories_cqpk PRIMARY KEY (account_id, region, id);


--
-- Name: aws_ssm_inventory_schemas aws_ssm_inventory_schemas__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_inventory_schemas
    ADD CONSTRAINT aws_ssm_inventory_schemas__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_inventory_schemas aws_ssm_inventory_schemas_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_inventory_schemas
    ADD CONSTRAINT aws_ssm_inventory_schemas_cqpk PRIMARY KEY (account_id, region, type_name, version);


--
-- Name: aws_ssm_parameters aws_ssm_parameters__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_parameters
    ADD CONSTRAINT aws_ssm_parameters__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_parameters aws_ssm_parameters_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_parameters
    ADD CONSTRAINT aws_ssm_parameters_cqpk PRIMARY KEY (account_id, region, name);


--
-- Name: aws_ssm_patch_baselines aws_ssm_patch_baselines__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_patch_baselines
    ADD CONSTRAINT aws_ssm_patch_baselines__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_patch_baselines aws_ssm_patch_baselines_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_patch_baselines
    ADD CONSTRAINT aws_ssm_patch_baselines_cqpk PRIMARY KEY (account_id, region, baseline_id);


--
-- Name: aws_ssm_sessions aws_ssm_sessions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_sessions
    ADD CONSTRAINT aws_ssm_sessions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_ssm_sessions aws_ssm_sessions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssm_sessions
    ADD CONSTRAINT aws_ssm_sessions_cqpk PRIMARY KEY (account_id, region, session_id);


--
-- Name: aws_ssoadmin_account_assignments aws_ssoadmin_account_assignments_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssoadmin_account_assignments
    ADD CONSTRAINT aws_ssoadmin_account_assignments_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ssoadmin_instances aws_ssoadmin_instances_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssoadmin_instances
    ADD CONSTRAINT aws_ssoadmin_instances_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_ssoadmin_permission_sets aws_ssoadmin_permission_sets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_ssoadmin_permission_sets
    ADD CONSTRAINT aws_ssoadmin_permission_sets_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_stepfunctions_activities aws_stepfunctions_activities__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_activities
    ADD CONSTRAINT aws_stepfunctions_activities__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_stepfunctions_activities aws_stepfunctions_activities_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_activities
    ADD CONSTRAINT aws_stepfunctions_activities_cqpk PRIMARY KEY (arn);


--
-- Name: aws_stepfunctions_executions aws_stepfunctions_executions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_executions
    ADD CONSTRAINT aws_stepfunctions_executions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_stepfunctions_executions aws_stepfunctions_executions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_executions
    ADD CONSTRAINT aws_stepfunctions_executions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_stepfunctions_map_run_executions aws_stepfunctions_map_run_executions__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_map_run_executions
    ADD CONSTRAINT aws_stepfunctions_map_run_executions__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_stepfunctions_map_run_executions aws_stepfunctions_map_run_executions_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_map_run_executions
    ADD CONSTRAINT aws_stepfunctions_map_run_executions_cqpk PRIMARY KEY (arn);


--
-- Name: aws_stepfunctions_map_runs aws_stepfunctions_map_runs__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_map_runs
    ADD CONSTRAINT aws_stepfunctions_map_runs__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_stepfunctions_map_runs aws_stepfunctions_map_runs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_map_runs
    ADD CONSTRAINT aws_stepfunctions_map_runs_cqpk PRIMARY KEY (arn);


--
-- Name: aws_stepfunctions_state_machines aws_stepfunctions_state_machines__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_state_machines
    ADD CONSTRAINT aws_stepfunctions_state_machines__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_stepfunctions_state_machines aws_stepfunctions_state_machines_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_stepfunctions_state_machines
    ADD CONSTRAINT aws_stepfunctions_state_machines_cqpk PRIMARY KEY (arn);


--
-- Name: aws_support_case_communications aws_support_case_communications_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_case_communications
    ADD CONSTRAINT aws_support_case_communications_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_support_cases aws_support_cases__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_cases
    ADD CONSTRAINT aws_support_cases__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_support_cases aws_support_cases_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_cases
    ADD CONSTRAINT aws_support_cases_cqpk PRIMARY KEY (account_id, region, case_id);


--
-- Name: aws_support_services aws_support_services__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_services
    ADD CONSTRAINT aws_support_services__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_support_services aws_support_services_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_services
    ADD CONSTRAINT aws_support_services_cqpk PRIMARY KEY (account_id, region, language_code, code);


--
-- Name: aws_support_severity_levels aws_support_severity_levels__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_severity_levels
    ADD CONSTRAINT aws_support_severity_levels__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_support_severity_levels aws_support_severity_levels_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_severity_levels
    ADD CONSTRAINT aws_support_severity_levels_cqpk PRIMARY KEY (account_id, region, language_code, code);


--
-- Name: aws_support_trusted_advisor_check_results aws_support_trusted_advisor_check_results__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_trusted_advisor_check_results
    ADD CONSTRAINT aws_support_trusted_advisor_check_results__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_support_trusted_advisor_check_results aws_support_trusted_advisor_check_results_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_trusted_advisor_check_results
    ADD CONSTRAINT aws_support_trusted_advisor_check_results_cqpk PRIMARY KEY (account_id, region, language_code, check_id);


--
-- Name: aws_support_trusted_advisor_check_summaries aws_support_trusted_advisor_check_summaries__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_trusted_advisor_check_summaries
    ADD CONSTRAINT aws_support_trusted_advisor_check_summaries__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_support_trusted_advisor_check_summaries aws_support_trusted_advisor_check_summaries_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_trusted_advisor_check_summaries
    ADD CONSTRAINT aws_support_trusted_advisor_check_summaries_cqpk PRIMARY KEY (account_id, region, language_code, check_id);


--
-- Name: aws_support_trusted_advisor_checks aws_support_trusted_advisor_checks__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_trusted_advisor_checks
    ADD CONSTRAINT aws_support_trusted_advisor_checks__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_support_trusted_advisor_checks aws_support_trusted_advisor_checks_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_support_trusted_advisor_checks
    ADD CONSTRAINT aws_support_trusted_advisor_checks_cqpk PRIMARY KEY (account_id, region, language_code, id);


--
-- Name: aws_timestream_databases aws_timestream_databases__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_timestream_databases
    ADD CONSTRAINT aws_timestream_databases__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_timestream_databases aws_timestream_databases_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_timestream_databases
    ADD CONSTRAINT aws_timestream_databases_cqpk PRIMARY KEY (arn);


--
-- Name: aws_timestream_tables aws_timestream_tables__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_timestream_tables
    ADD CONSTRAINT aws_timestream_tables__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_timestream_tables aws_timestream_tables_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_timestream_tables
    ADD CONSTRAINT aws_timestream_tables_cqpk PRIMARY KEY (arn);


--
-- Name: aws_transfer_servers aws_transfer_servers__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_transfer_servers
    ADD CONSTRAINT aws_transfer_servers__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_transfer_servers aws_transfer_servers_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_transfer_servers
    ADD CONSTRAINT aws_transfer_servers_cqpk PRIMARY KEY (arn);


--
-- Name: aws_waf_rule_groups aws_waf_rule_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_waf_rule_groups
    ADD CONSTRAINT aws_waf_rule_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_waf_rule_groups aws_waf_rule_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_waf_rule_groups
    ADD CONSTRAINT aws_waf_rule_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_waf_rules aws_waf_rules__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_waf_rules
    ADD CONSTRAINT aws_waf_rules__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_waf_rules aws_waf_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_waf_rules
    ADD CONSTRAINT aws_waf_rules_cqpk PRIMARY KEY (arn);


--
-- Name: aws_waf_subscribed_rule_groups aws_waf_subscribed_rule_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_waf_subscribed_rule_groups
    ADD CONSTRAINT aws_waf_subscribed_rule_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_waf_subscribed_rule_groups aws_waf_subscribed_rule_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_waf_subscribed_rule_groups
    ADD CONSTRAINT aws_waf_subscribed_rule_groups_cqpk PRIMARY KEY (account_id, rule_group_id);


--
-- Name: aws_waf_web_acls aws_waf_web_acls__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_waf_web_acls
    ADD CONSTRAINT aws_waf_web_acls__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_waf_web_acls aws_waf_web_acls_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_waf_web_acls
    ADD CONSTRAINT aws_waf_web_acls_cqpk PRIMARY KEY (arn);


--
-- Name: aws_wafregional_rate_based_rules aws_wafregional_rate_based_rules__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafregional_rate_based_rules
    ADD CONSTRAINT aws_wafregional_rate_based_rules__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_wafregional_rate_based_rules aws_wafregional_rate_based_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafregional_rate_based_rules
    ADD CONSTRAINT aws_wafregional_rate_based_rules_cqpk PRIMARY KEY (arn);


--
-- Name: aws_wafregional_rule_groups aws_wafregional_rule_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafregional_rule_groups
    ADD CONSTRAINT aws_wafregional_rule_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_wafregional_rule_groups aws_wafregional_rule_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafregional_rule_groups
    ADD CONSTRAINT aws_wafregional_rule_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_wafregional_rules aws_wafregional_rules__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafregional_rules
    ADD CONSTRAINT aws_wafregional_rules__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_wafregional_rules aws_wafregional_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafregional_rules
    ADD CONSTRAINT aws_wafregional_rules_cqpk PRIMARY KEY (arn);


--
-- Name: aws_wafregional_web_acls aws_wafregional_web_acls__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafregional_web_acls
    ADD CONSTRAINT aws_wafregional_web_acls__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_wafregional_web_acls aws_wafregional_web_acls_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafregional_web_acls
    ADD CONSTRAINT aws_wafregional_web_acls_cqpk PRIMARY KEY (arn);


--
-- Name: aws_wafv2_ipsets aws_wafv2_ipsets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_ipsets
    ADD CONSTRAINT aws_wafv2_ipsets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_wafv2_ipsets aws_wafv2_ipsets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_ipsets
    ADD CONSTRAINT aws_wafv2_ipsets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_wafv2_managed_rule_groups aws_wafv2_managed_rule_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_managed_rule_groups
    ADD CONSTRAINT aws_wafv2_managed_rule_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_wafv2_managed_rule_groups aws_wafv2_managed_rule_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_managed_rule_groups
    ADD CONSTRAINT aws_wafv2_managed_rule_groups_cqpk PRIMARY KEY (account_id, region, scope, name, vendor_name);


--
-- Name: aws_wafv2_regex_pattern_sets aws_wafv2_regex_pattern_sets__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_regex_pattern_sets
    ADD CONSTRAINT aws_wafv2_regex_pattern_sets__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_wafv2_regex_pattern_sets aws_wafv2_regex_pattern_sets_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_regex_pattern_sets
    ADD CONSTRAINT aws_wafv2_regex_pattern_sets_cqpk PRIMARY KEY (arn);


--
-- Name: aws_wafv2_rule_groups aws_wafv2_rule_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_rule_groups
    ADD CONSTRAINT aws_wafv2_rule_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_wafv2_rule_groups aws_wafv2_rule_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_rule_groups
    ADD CONSTRAINT aws_wafv2_rule_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_wafv2_web_acls aws_wafv2_web_acls__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_web_acls
    ADD CONSTRAINT aws_wafv2_web_acls__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_wafv2_web_acls aws_wafv2_web_acls_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_wafv2_web_acls
    ADD CONSTRAINT aws_wafv2_web_acls_cqpk PRIMARY KEY (arn);


--
-- Name: aws_workspaces_directories aws_workspaces_directories__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_workspaces_directories
    ADD CONSTRAINT aws_workspaces_directories__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_workspaces_directories aws_workspaces_directories_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_workspaces_directories
    ADD CONSTRAINT aws_workspaces_directories_cqpk PRIMARY KEY (arn);


--
-- Name: aws_workspaces_workspaces aws_workspaces_workspaces__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_workspaces_workspaces
    ADD CONSTRAINT aws_workspaces_workspaces__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_workspaces_workspaces aws_workspaces_workspaces_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_workspaces_workspaces
    ADD CONSTRAINT aws_workspaces_workspaces_cqpk PRIMARY KEY (arn);


--
-- Name: aws_xray_encryption_configs aws_xray_encryption_configs_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_xray_encryption_configs
    ADD CONSTRAINT aws_xray_encryption_configs_cqpk PRIMARY KEY (_cq_id);


--
-- Name: aws_xray_groups aws_xray_groups__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_xray_groups
    ADD CONSTRAINT aws_xray_groups__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_xray_groups aws_xray_groups_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_xray_groups
    ADD CONSTRAINT aws_xray_groups_cqpk PRIMARY KEY (arn);


--
-- Name: aws_xray_resource_policies aws_xray_resource_policies__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_xray_resource_policies
    ADD CONSTRAINT aws_xray_resource_policies__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_xray_resource_policies aws_xray_resource_policies_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_xray_resource_policies
    ADD CONSTRAINT aws_xray_resource_policies_cqpk PRIMARY KEY (account_id, region, policy_name, policy_revision_id);


--
-- Name: aws_xray_sampling_rules aws_xray_sampling_rules__cq_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_xray_sampling_rules
    ADD CONSTRAINT aws_xray_sampling_rules__cq_id_key UNIQUE (_cq_id);


--
-- Name: aws_xray_sampling_rules aws_xray_sampling_rules_cqpk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aws_xray_sampling_rules
    ADD CONSTRAINT aws_xray_sampling_rules_cqpk PRIMARY KEY (arn);


--
-- PostgreSQL database dump complete
--

