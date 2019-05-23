
# puppet-atheaderservice

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with atheaderservice](#setup)
    * [What atheaderservice affects](#what-atheaderservice-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with atheaderservice](#beginning-with-atheaderservice)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)

## Description

Puppet module for installing and configuring the LSST ATHeaderService CSC.

## Setup

### What atheaderservice affects

The module installs prerequisites, installs the ATHeaderService software, and configures firewall settings.

### Setup Requirements

This module requires the following puppet modules to be installed:

  * https://github.com/LSST-IT/puppet-sal
  * https://github.com/LSST-IT/puppet-python3
  * https://forge.puppet.com/puppetlabs/firewall
  * https://forge.puppet.com/puppetlabs/stdlib

### Beginning with atheaderservice

## Usage

To use load the ATHeaderService puppet module, declare this class in your manifest with `include atheaderservice`.

## Reference

The following parameters let you extend ATHeaderService options beyond the default:

  * `atheaderservice::firewall::web_ports` - Array of web ports opened up in firewall rules
  * `atheaderservice::firewall::web_subnets` - Hash of subnets that can send web traffic

## Limitations

This ATHeaderService module only supports RHEL/CentOS servers that are configured to use `iptables`.



