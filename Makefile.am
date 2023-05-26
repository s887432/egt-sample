AUTOMAKE_OPTIONS = subdir-objects

CUSTOM_CXXFLAGS = $(WARN_CFLAGS) \
	-I$(top_srcdir)/src \
	$(LIBEGT_CFLAGS)

CUSTOM_LDADD = $(LIBEGT_LIBS)

bin_PROGRAMS = sample
sample_SOURCES = src/main.cpp
sample_CXXFLAGS = $(CUSTOM_CXXFLAGS) $(AM_CXXFLAGS)
sample_LDADD = $(CUSTOM_LDADD)
sample_LDFLAGS = $(AM_LDFLAGS)
