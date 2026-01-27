# compliance_findings.tf

locals {
  compliance_findings = [
    {
      standard_id   = "c9056ac2-0ccc-4157-80e8-77572367378e"
      standard_name = "Health Insurance Portability and Accountability Act (HIPAA)"
      controls = [
        {
          control_id         = "00664129-9e9d-422a-9ef5-04bb4ea1833f"
          control_name       = "164.312(e)(2)(ii)"
          control_definition = "Encryption. Implement a mechanism to encrypt electronic protected health information whenever deemed appropriate."
        }
      ]
    },
    {
      standard_id   = "33242a41-f22e-4b70-808d-e4b2c69f3653"
      standard_name = "General Data Protection Regulation (GDPR)"
      controls = [
        {
          control_id         = "0fa1abcc-e6f9-4663-8c99-8401b4bf4703"
          control_name       = "Article 76"
          control_definition = "Confidentiality"
        }
      ]
    },
    {
      standard_id   = "45364724-6338-4c0b-b493-7c2c083501b6"
      standard_name = "ISO/IEC 27001:2022"
      controls = [
        {
          control_id         = "14d1efa3-8535-451c-8a33-3e7a4f190fbd"
          control_name       = "A5.33"
          control_definition = "Protection of Records"
        }
      ]
    },
    {
      standard_id   = "7a586404-114b-4b54-81e5-ed694e784a1a"
      standard_name = "Cloud Security Assurance Program (CSAP) - Low SaaS"
      controls = [
        {
          control_id         = "15881180-ce3c-429a-b8be-12aedddf9d67"
          control_name       = "12.3.1 - Establishment of encryption policy"
          control_definition = "Develop an encryption policy for data at rest and in transit, reflecting legal requirements."
        }
      ]
    },
    {
      standard_id   = "5bfd3f79-b74c-4b4c-affa-34fefd46daad"
      standard_name = "Cloud Security Assurance Program (CSAP) - Low"
      controls = [
        {
          control_id         = "16ac7442-03c2-4169-977b-f663fc6a3e32"
          control_name       = "9.1.3 - Monitoring of virtual resources"
          control_definition = "Monitor the integrity of virtual resources and notify users of any damage."
        },
        {
          control_id         = "5486da76-1f32-4b04-8189-60fec3f2efa8"
          control_name       = "12.3.1 - Establishment of encryption policy"
          control_definition = "Develop an encryption policy for data at rest and in transit, reflecting legal requirements."
        }
      ]
    },
    {
      standard_id   = "ba5faa53-ee6a-4777-bcc3-d1b8b2797016"
      standard_name = "Australian Energy Sector Cyber Security Framework (AESCSF) v2 - Lite Framework"
      controls = [
        {
          control_id         = "17d950ce-dde0-4017-a52a-2e2db6856e04"
          control_name       = "2.4 | Establish and maintain cyber security architecture"
          control_definition = "Establishing cyber security architecture involves identifying cyber security requirements for your organisation’s assets and designing appropriate controls."
        }
      ]
    },
    {
      standard_id   = "e63052ad-6c9b-4c33-b9d8-26651785b4bc"
      standard_name = "Cloud Security Assurance Program (CSAP) - IaaS"
      controls = [
        {
          control_id         = "1eb52a97-ad71-4e38-a606-91fecbbba9b6"
          control_name       = "9.1.3 - Monitoring of virtual resources"
          control_definition = "Monitor the integrity of virtual resources and notify users of any damage."
        },
        {
          control_id         = "55f35056-fb78-4056-b2c7-998cbf4c16cf"
          control_name       = "12.3.2 - Encryption key management"
          control_definition = "Implement secure procedures for creation, storage, distribution, and destruction of encryption keys."
        }
      ]
    },
    {
      standard_id   = "5b068a92-b1f0-4022-9601-444ace6f8f05"
      standard_name = "Insurance Regulatory And Development Authority Of India v1"
      controls = [
        {
          control_id         = "22d1693d-304a-4afa-8802-5d030ea6b7e6"
          control_name       = "Cryptographic Controls"
          control_definition = "Specifies the use of cryptography to protect sensitive data during transmission and storage."
        }
      ]
    },
    {
      standard_id   = "13065bc9-eaec-4846-9678-a748781f5565"
      standard_name = "NEW YORK STATE DEPARTMENT OF FINANCIAL SERVICES (NYDFS) 23 CRR-NY 500.0"
      controls = [
        {
          control_id         = "3ae892ed-c74e-4306-bf42-4143840bef69"
          control_name       = "500.15 (a)"
          control_definition = "Implement controls, including encryption, to protect nonpublic information held or transmitted."
        },
        {
          control_id         = "dcbf5bea-a99d-4dd4-801c-5d0d9a33aa5a"
          control_name       = "500.09 (b) (
