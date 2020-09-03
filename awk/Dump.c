/*

	Made by Edoardo Mantovani, 2020
	this library is the awk version of RTE::Dump perl library
	for installation execute the Makefile with sudo priviledges
	
*/

#include <stdio.h>
#include <assert.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/stat.h>

#include "gawkapi.h"

#define LINE_LEN 128



static const gawk_api_t *api;
static awk_ext_id_t ext_id;

int plugin_is_GPL_compatible;


static awk_value_t * do_rte_hexdump(FILE *f,  const char *title,  const void *buf,  unsigned int len)
{
	unsigned int i, out, ofs;
	const unsigned char *data = buf;
	char line[LINE_LEN];	
	fprintf(f, "%s at [%p], len=%u\n", title ? : "  Dump data", data, len);
	ofs = 0;
while (ofs < len) {
		out = snprintf(line, LINE_LEN, "%08X:", ofs);
		for (i = 0; i < 16; i++) {
			if (ofs + i < len)
				snprintf(line + out, LINE_LEN - out,
					 " %02X", (data[ofs + i] & 0xff));
			else
				strcpy(line + out, "   ");
			out += 3;
		}


		for (; i <= 16; i++){
			out += snprintf(line + out, LINE_LEN - out, " | ");
			}
		for (i = 0; ofs < len && i < 16; i++, ofs++) {
			unsigned char c = data[ofs];

			if (c < ' ' || c > '~')
				c = '.';
			out += snprintf(line + out, LINE_LEN - out, "%c", c);
		}
		fprintf(f, "%s\n", line);
	}
	fflush(f);

}


static awk_ext_func_t func_table[] = {
    { "rte_hexdump", do_rte_hexdump, 1, 0, awk_false, NULL },

};

static awk_bool_t (*init_func)(void) = NULL;
static const char *ext_version = "1.00";

dl_load_func(func_table, rte_hexdump, "")


