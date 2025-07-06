#
# OMNeT++/OMNEST Makefile for DDos46
#
# This file was generated with the command:
#  opp_makemake -f --deep -O out -IS:/inet-2.6.0/src/linklayer/ieee80211/radio -IS:/inet-2.6.0/src/networklayer/routing/aodv -IS:/inet-2.6.0/src/networklayer/common -IS:/inet-2.6.0/src/networklayer/icmpv6 -IS:/inet-2.6.0/src -IS:/inet-2.6.0/src/world/obstacles -IS:/inet-2.6.0/src/networklayer/xmipv6 -IS:/inet-2.6.0/src/networklayer/contract -IS:/inet-2.6.0/src/networklayer/autorouting/ipv4 -IS:/inet-2.6.0/src/util -IS:/inet-2.6.0/src/transport/contract -IS:/inet-2.6.0/src/linklayer/common -IS:/inet-2.6.0/src/status -IS:/inet-2.6.0/src/linklayer/radio/propagation -IS:/inet-2.6.0/src/linklayer/ieee80211/radio/errormodel -IS:/inet-2.6.0/src/linklayer/radio -IS:/inet-2.6.0/src/util/headerserializers/tcp -IS:/inet-2.6.0/src/networklayer/ipv4 -IS:/inet-2.6.0/src/mobility/contract -IS:/inet-2.6.0/src/util/headerserializers/ipv4 -IS:/inet-2.6.0/src/base -IS:/inet-2.6.0/src/util/headerserializers -IS:/inet-2.6.0/src/world/radio -IS:/inet-2.6.0/src/linklayer/ieee80211/mac -IS:/inet-2.6.0/src/networklayer/ipv6 -IS:/inet-2.6.0/src/transport/sctp -IS:/inet-2.6.0/src/util/headerserializers/udp -IS:/inet-2.6.0/src/networklayer/ipv6tunneling -IS:/inet-2.6.0/src/applications/pingapp -IS:/inet-2.6.0/src/battery/models -IS:/inet-2.6.0/src/util/headerserializers/ipv6 -IS:/inet-2.6.0/src/util/headerserializers/sctp -IS:/inet-2.6.0/src/linklayer/contract -IS:/inet-2.6.0/src/networklayer/arp -IS:/inet-2.6.0/src/transport/tcp_common -IS:/inet-2.6.0/src/transport/udp -LS:/inet-2.6.0/out/$$\(CONFIGNAME\)/src -linet -DINET_IMPORT -KINET_PROJ=S:/inet-2.6.0
#

# Name of target to be created (-o option)
TARGET = DDos46$(EXE_SUFFIX)

# User interface (uncomment one) (-u option)
USERIF_LIBS = $(ALL_ENV_LIBS) # that is, $(TKENV_LIBS) $(CMDENV_LIBS)
#USERIF_LIBS = $(CMDENV_LIBS)
#USERIF_LIBS = $(TKENV_LIBS)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I$(INET_PROJ)/src/linklayer/ieee80211/radio \
    -I$(INET_PROJ)/src/networklayer/routing/aodv \
    -I$(INET_PROJ)/src/networklayer/common \
    -I$(INET_PROJ)/src/networklayer/icmpv6 \
    -I$(INET_PROJ)/src \
    -I$(INET_PROJ)/src/world/obstacles \
    -I$(INET_PROJ)/src/networklayer/xmipv6 \
    -I$(INET_PROJ)/src/networklayer/contract \
    -I$(INET_PROJ)/src/networklayer/autorouting/ipv4 \
    -I$(INET_PROJ)/src/util \
    -I$(INET_PROJ)/src/transport/contract \
    -I$(INET_PROJ)/src/linklayer/common \
    -I$(INET_PROJ)/src/status \
    -I$(INET_PROJ)/src/linklayer/radio/propagation \
    -I$(INET_PROJ)/src/linklayer/ieee80211/radio/errormodel \
    -I$(INET_PROJ)/src/linklayer/radio \
    -I$(INET_PROJ)/src/util/headerserializers/tcp \
    -I$(INET_PROJ)/src/networklayer/ipv4 \
    -I$(INET_PROJ)/src/mobility/contract \
    -I$(INET_PROJ)/src/util/headerserializers/ipv4 \
    -I$(INET_PROJ)/src/base \
    -I$(INET_PROJ)/src/util/headerserializers \
    -I$(INET_PROJ)/src/world/radio \
    -I$(INET_PROJ)/src/linklayer/ieee80211/mac \
    -I$(INET_PROJ)/src/networklayer/ipv6 \
    -I$(INET_PROJ)/src/transport/sctp \
    -I$(INET_PROJ)/src/util/headerserializers/udp \
    -I$(INET_PROJ)/src/networklayer/ipv6tunneling \
    -I$(INET_PROJ)/src/applications/pingapp \
    -I$(INET_PROJ)/src/battery/models \
    -I$(INET_PROJ)/src/util/headerserializers/ipv6 \
    -I$(INET_PROJ)/src/util/headerserializers/sctp \
    -I$(INET_PROJ)/src/linklayer/contract \
    -I$(INET_PROJ)/src/networklayer/arp \
    -I$(INET_PROJ)/src/transport/tcp_common \
    -I$(INET_PROJ)/src/transport/udp \
    -I. \
    -Iddos \
    -Idefender \
    -Izombie

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L$(INET_PROJ)/out/$(CONFIGNAME)/src  -linet
LIBS += -Wl,-rpath,`abspath $(INET_PROJ)/out/$(CONFIGNAME)/src`

# Output directory
PROJECT_OUTPUT_DIR = out
PROJECTRELATIVE_PATH =
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = $O/ddos/TribeFloodNetwork.o $O/defender/defender.o $O/defender/Def_IPv4.o $O/zombie/ZombieClient.o

# Message files
MSGFILES =

# Other makefile variables (-K)
INET_PROJ=S:/inet-2.6.0

#------------------------------------------------------------------------------

# Pull in OMNeT++ configuration (Makefile.inc or configuser.vc)

ifneq ("$(OMNETPP_CONFIGFILE)","")
CONFIGFILE = $(OMNETPP_CONFIGFILE)
else
ifneq ("$(OMNETPP_ROOT)","")
CONFIGFILE = $(OMNETPP_ROOT)/Makefile.inc
else
CONFIGFILE = $(shell opp_configfilepath)
endif
endif

ifeq ("$(wildcard $(CONFIGFILE))","")
$(error Config file '$(CONFIGFILE)' does not exist -- add the OMNeT++ bin directory to the path so that opp_configfilepath can be found, or set the OMNETPP_CONFIGFILE variable to point to Makefile.inc)
endif

include $(CONFIGFILE)

# Simulation kernel and user interface libraries
OMNETPP_LIB_SUBDIR = $(OMNETPP_LIB_DIR)/$(TOOLCHAIN_NAME)
OMNETPP_LIBS = -L"$(OMNETPP_LIB_SUBDIR)" -L"$(OMNETPP_LIB_DIR)" -loppmain$D $(USERIF_LIBS) $(KERNEL_LIBS) $(SYS_LIBS)

COPTS = $(CFLAGS) -DINET_IMPORT $(INCLUDE_PATH) -I$(OMNETPP_INCL_DIR)
MSGCOPTS = $(INCLUDE_PATH)

# we want to recompile everything if COPTS changes,
# so we store COPTS into $COPTS_FILE and have object
# files depend on it (except when "make depend" was called)
COPTS_FILE = $O/.last-copts
ifneq ($(MAKECMDGOALS),depend)
ifneq ("$(COPTS)","$(shell cat $(COPTS_FILE) 2>/dev/null || echo '')")
$(shell $(MKPATH) "$O" && echo "$(COPTS)" >$(COPTS_FILE))
endif
endif

#------------------------------------------------------------------------------
# User-supplied makefile fragment(s)
# >>>
# <<<
#------------------------------------------------------------------------------

# Main target
all: $O/$(TARGET)
	$(Q)$(LN) $O/$(TARGET) .

$O/$(TARGET): $(OBJS)  $(wildcard $(EXTRA_OBJS)) Makefile
	@$(MKPATH) $O
	@echo Creating executable: $@
	$(Q)$(CXX) $(LDFLAGS) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(AS_NEEDED_OFF) $(WHOLE_ARCHIVE_ON) $(LIBS) $(WHOLE_ARCHIVE_OFF) $(OMNETPP_LIBS)

.PHONY: all clean cleanall depend msgheaders

.SUFFIXES: .cc

$O/%.o: %.cc $(COPTS_FILE)
	@$(MKPATH) $(dir $@)
	$(qecho) "$<"
	$(Q)$(CXX) -c $(CXXFLAGS) $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(qecho) MSGC: $<
	$(Q)$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)

clean:
	$(qecho) Cleaning...
	$(Q)-rm -rf $O
	$(Q)-rm -f DDos46 DDos46.exe libDDos46.so libDDos46.a libDDos46.dll libDDos46.dylib
	$(Q)-rm -f ./*_m.cc ./*_m.h
	$(Q)-rm -f ddos/*_m.cc ddos/*_m.h
	$(Q)-rm -f defender/*_m.cc defender/*_m.h
	$(Q)-rm -f zombie/*_m.cc zombie/*_m.h

cleanall: clean
	$(Q)-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(qecho) Creating dependencies...
	$(Q)$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc ddos/*.cc defender/*.cc zombie/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/ddos/TribeFloodNetwork.o: ddos/TribeFloodNetwork.cc \
	ddos/TribeFloodNetwork.h
$O/defender/Def_IPv4.o: defender/Def_IPv4.cc \
	defender/Def_IPv4.h \
	$(INET_PROJ)/src/base/AbstractQueue.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/ILifecycle.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/base/INotifiable.h \
	$(INET_PROJ)/src/base/ModuleAccess.h \
	$(INET_PROJ)/src/base/NotificationBoard.h \
	$(INET_PROJ)/src/base/NotifierConsts.h \
	$(INET_PROJ)/src/base/ProtocolMap.h \
	$(INET_PROJ)/src/base/QueueBase.h \
	$(INET_PROJ)/src/base/ReassemblyBuffer.h \
	$(INET_PROJ)/src/linklayer/contract/MACAddress.h \
	$(INET_PROJ)/src/networklayer/arp/IARPCache.h \
	$(INET_PROJ)/src/networklayer/common/INetfilter.h \
	$(INET_PROJ)/src/networklayer/common/InterfaceEntry.h \
	$(INET_PROJ)/src/networklayer/common/InterfaceToken.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPSocket.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/ipv4/ICMP.h \
	$(INET_PROJ)/src/networklayer/ipv4/ICMPAccess.h \
	$(INET_PROJ)/src/networklayer/ipv4/ICMPMessage.h \
	$(INET_PROJ)/src/networklayer/ipv4/ICMPMessage_m.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4FragBuf.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4InterfaceData.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Route.h \
	$(INET_PROJ)/src/networklayer/ipv4/IRoutingTable.h \
	$(INET_PROJ)/src/networklayer/ipv4/RoutingTableAccess.h
$O/defender/defender.o: defender/defender.cc \
	defender/defender.h \
	$(INET_PROJ)/src/base/Compat.h \
	$(INET_PROJ)/src/base/INETDefs.h \
	$(INET_PROJ)/src/networklayer/contract/IPProtocolId_m.h \
	$(INET_PROJ)/src/networklayer/contract/IPv4Address.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram.h \
	$(INET_PROJ)/src/networklayer/ipv4/IPv4Datagram_m.h
$O/zombie/ZombieClient.o: zombie/ZombieClient.cc

