# Note: plugindir is set in configure

##############################################################################
# TODO: change libgstplugin.la to something else, e.g. libmysomething.la     #
##############################################################################
plugin_LTLIBRARIES = libgstcomplextransf.la

##############################################################################
# TODO: for the next set of variables, name the prefix if you named the .la, #
#  e.g. libmysomething.la => libmysomething_la_SOURCES                       #
#                            libmysomething_la_CFLAGS                        #
#                            libmysomething_la_LIBADD                        #
#                            libmysomething_la_LDFLAGS                       #
##############################################################################

# sources used to compile this plug-in
libgstcomplextransf_la_SOURCES = gstcomplextransf.c \
                                      gstgeometrictransform.c \
                                      gstcirclegeometrictransform.c \
                                      geometricmath.c \
                                      gstcmplxtrans.c

# compiler and linker flags used to compile this plugin, set in configure.ac
libgstcomplextransf_la_CFLAGS = $(GST_CFLAGS)
libgstcomplextransf_la_LIBADD = $(GST_LIBS) \
                            -lgstvideo-0.10 \
                            -lgstinterfaces-0.10

#                            -lgstvideo-@GST_MAJORMINOR@ \
#                            -lgstinterfaces-@GST_MAJORMINOR@

libgstcomplextransf_la_LDFLAGS = $(GST_PLUGIN_LDFLAGS)
libgstcomplextransf_la_LIBTOOLFLAGS = --tag=disable-static

# headers we need but don't want installed
#noinst_HEADERS = gstcomplextransf.h
