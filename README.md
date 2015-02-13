# Puppet Module
# `gajdaw/sinatra`

#### Table of Contents

1. [Overview](#overview)
2. [Setup](#setup)
3. [Usage](#usage)

## 1. Overview

The module to install Sinatra framework.

## 2. Setup

To install the module run:

    sudo puppet install module gajdaw-sinatra

## 3. Usage

You can apply sinatra class running the following command:

    sudo puppet apply -e 'include sinatra'

You can also use the example manifest `default.pp`:

    sudo puppet apply /etp/puppet/modules/sinatra/examples/default.pp

## Limitations

You will find the exact information about supported platforms
in `metadata.json` file.
