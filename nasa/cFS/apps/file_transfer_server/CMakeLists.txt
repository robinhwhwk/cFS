cmake_minimum_required(VERSION 2.8.12)
project(CFE_CLIENT C)

include_directories(fsw/platform_inc)

aux_source_directory(fsw/src APP_SRC_FILES)

add_cfe_app(client_app ${APP_SRC_FILES})
