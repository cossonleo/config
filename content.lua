local license = string.format("%20s", "LICENSE: ")
local author = string.format("%20s", "Author ")
local version = string.format("%20s", "Version: ")
local createTime = string.format("%20s", "CreateTime: ")
local lastUpdate = string.format("%20s", "LastUpdate: ")
local desc = string.format("%20s", "Desc: ")

local lua_headline = '---------------------------------------------------------------'
local lua_bodyprefix = '--  '

local normal_headline = '/****************************************************************'
local normal_endline = '****************************************************************/'
local normal_bodyprefix = "**  "
-- /**/
-- //*/

local sh_healine = '############################################'
local sh_bodyprefix = "##  "
local script_prefix = "#! /usr/bin/bash"

function get_bash_file_comment()
	file_comment = {}
	file_comment["head"] = sh_healine
	file_comment["license"] = sh_bodyprefix .. license
	file_comment["author"] = sh_bodyprefix .. author
	file_comment["version"] = sh_bodyprefix .. version
	file_comment["createTime"] = sh_bodyprefix .. createTime
	file_comment["lastUpdate"] = sh_bodyprefix .. lastUpdate
	file_comment["desc"] = sh_bodyprefix .. desc
	file_comment["end"] = sh_healine
end

function get_normal_file_comment()
end

function get_lua_file_comment()
end

function get_python_file_comment()
end
