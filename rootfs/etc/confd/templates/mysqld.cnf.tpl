# Copyright (c) 2014, 2016, Oracle and/or its affiliates. All rights reserved.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA

#
# The MySQL  Server configuration file. (confd version)
#
# For explanations see
# http://dev.mysql.com/doc/mysql/en/server-system-variables.html

[mysqld]
pid-file			= /var/run/mysqld/mysqld.pid
socket				= /var/run/mysqld/mysqld.sock
datadir				= /var/lib/mysql
general_log			= {{getv "/mysql/general/log"}}
general_log_file	= /var/log/mysql/mysql.log
log_error           = stderr

expire_logs_days    = 10
# By default we only accept connections from localhost
#bind-address		= 127.0.0.1
# Disabling symbolic-links is recommended to prevent assorted security risks
symbolic-links		= 0

[mysqld_safe]
log_error           = stderr