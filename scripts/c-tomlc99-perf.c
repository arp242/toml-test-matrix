#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "toml.h"

static void fatal(const char *msg, const char *msg1) {
	fprintf(stderr, "ERROR: %s%s\n", msg, msg1 ? msg1 : "");
	exit(1);
}

int main(int argc, const char *argv[]) {
	FILE *fp = fopen(argv[1], "r");
	if (!fp)
		fatal("cannot open sample.toml - ", strerror(errno));

	char errbuf[200];
	struct timespec start, end;
	clock_gettime(CLOCK_REALTIME, &start);
	toml_table_t *conf = toml_parse_file(fp, errbuf, sizeof(errbuf));
	clock_gettime(CLOCK_REALTIME, &end);
	fclose(fp);
	if (!conf)
		fatal("cannot parse - ", errbuf);
	toml_free(conf);

	printf("%f\n", (end.tv_sec - start.tv_sec)
			+ (double)(end.tv_nsec - start.tv_nsec)
			/ (double)1000000000L);

	return 0;
}
