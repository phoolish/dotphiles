#!/usr/bin/env bash

ps1_aws()
{
  if [[ $AWS_PROFILE ]]; then
    printf " \[\033[81m\]AWS:$AWS_PROFILE\[\033[0m\]"
  fi
}
