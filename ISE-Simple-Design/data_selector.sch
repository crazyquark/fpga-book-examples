<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="A" />
        <signal name="Q" />
        <signal name="XLXN_9" />
        <signal name="SEL" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="Q" />
        <port polarity="Output" name="XLXN_9" />
        <port polarity="Input" name="SEL" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="SEL" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="XLXN_3" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="864" y="1024" name="XLXI_1" orien="R0" />
        <instance x="864" y="784" name="XLXI_2" orien="R0" />
        <instance x="1280" y="896" name="XLXI_3" orien="R0" />
        <instance x="128" y="1200" name="XLXI_4" orien="R0" />
        <instance x="448" y="1200" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="768" y1="1168" y2="1168" x1="672" />
            <wire x2="768" y1="960" y2="1168" x1="768" />
            <wire x2="864" y1="960" y2="960" x1="768" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="400" y1="1168" y2="1168" x1="352" />
            <wire x2="448" y1="1168" y2="1168" x1="400" />
            <wire x2="864" y1="720" y2="720" x1="400" />
            <wire x2="400" y1="720" y2="1168" x1="400" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1200" y1="688" y2="688" x1="1120" />
            <wire x2="1200" y1="688" y2="768" x1="1200" />
            <wire x2="1280" y1="768" y2="768" x1="1200" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1200" y1="928" y2="928" x1="1120" />
            <wire x2="1200" y1="832" y2="928" x1="1200" />
            <wire x2="1280" y1="832" y2="832" x1="1200" />
        </branch>
        <branch name="A">
            <wire x2="848" y1="656" y2="656" x1="144" />
            <wire x2="864" y1="656" y2="656" x1="848" />
        </branch>
        <branch name="Q">
            <wire x2="848" y1="896" y2="896" x1="144" />
            <wire x2="864" y1="896" y2="896" x1="848" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1552" y1="800" y2="800" x1="1536" />
            <wire x2="1760" y1="800" y2="800" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1760" y="800" name="XLXN_9" orien="R0" />
        <branch name="SEL">
            <wire x2="112" y1="1168" y2="1168" x1="96" />
            <wire x2="128" y1="1168" y2="1168" x1="112" />
        </branch>
        <iomarker fontsize="28" x="96" y="1168" name="SEL" orien="R180" />
        <iomarker fontsize="28" x="144" y="896" name="Q" orien="R180" />
        <iomarker fontsize="28" x="144" y="656" name="A" orien="R180" />
    </sheet>
</drawing>