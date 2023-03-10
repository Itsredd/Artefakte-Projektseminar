import "vt"

rule extlolbins {
meta:
    author = "Alex Dkhf"
    Description = "When file marked as malware by more then 5 engines and file opens other file with name of lolbin"
condition:
    vt.metadata.analysis_stats.malicious > 5 and (
    for any paths in vt.behaviour.files_opened : ( paths contains "\\AppInstaller.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Aspnet_Compiler.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\At.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Atbroker.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Bash.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Bitsadmin.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\CertOC.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\CertReq.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Certutil.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Cmd.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Cmdkey.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\cmdl32.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Cmstp.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\ConfigSecurityPolicy.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Conhost.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Control.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Csc.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Cscript.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\CustomShellHost.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\DataSvcUtil.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Desktopimgdownldr.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\DeviceCredentialDeployment.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Dfsvc.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Diantz.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Diskshadow.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Dnscmd.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Esentutl.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Eventvwr.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Expand.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Explorer.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Extexport.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Extrac32.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Findstr.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Finger.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\fltMC.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Forfiles.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Ftp.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\GfxDownloadWrapper.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Gpscript.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Hh.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\IMEWDBLD.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Ie4uinit.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Ieexec.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Ilasm.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Infdefaultinstall.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Installutil.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Jsc.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Ldifde.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Makecab.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Mavinject.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Microsoft.Workflow.Compiler.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Mmc.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\MpCmdRun.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Msbuild.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Msconfig.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Msdt.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Mshta.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Msiexec.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Netsh.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Odbcconf.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\OfflineScannerShell.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\OneDriveStandaloneUpdater.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Pcalua.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Pcwrun.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Pktmon.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Pnputil.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Presentationhost.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Print.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\PrintBrm.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Psr.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Rasautou.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\rdrleakdiag.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Reg.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Regasm.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Regedit.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Regini.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Register-cimprovider.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Regsvcs.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Regsvr32.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Replace.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Rpcping.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Rundll32.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Runonce.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Runscripthelper.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Sc.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Schtasks.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Scriptrunner.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Setres.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\SettingSyncHost.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\ssh.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Stordiag.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\SyncAppvPublishingServer.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Ttdinject.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Tttracer.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Unregmp2.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\vbc.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Verclsid.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Wab.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\winget.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Wlrmdr.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Wmic.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\WorkFolders.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Wscript.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Wsreset.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\wuauclt.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Xwizard.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\fsutil.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\wt.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\AccCheckConsole.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\adplus.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\AgentExecutor.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Appvlp.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Bginfo.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Cdb.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\coregen.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Createdump.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\csi.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\DefaultPack.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Devtoolslauncher.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\dnx.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Dotnet.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Dump64.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Dxcap.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Excel.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Fsi.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\FsiAnyCpu.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Mftrace.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Msdeploy.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\MsoHtmEd.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Mspub.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\msxsl.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\ntdsutil.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\OpenConsole.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Powerpnt.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\Procdump.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\ProtocolHandler.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\rcsi.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\powershell.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\net.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\dllhost.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\tasklist.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\systeminfo.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\gpresult.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\curl.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\rdpclip.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\bcdedit.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\nltest.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\adexplorer.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\sdelete.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\psexec.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\EQNEDT32.exe") or
    for any paths in vt.behaviour.files_opened : ( paths contains "\\W3wp.exe")
    )
}