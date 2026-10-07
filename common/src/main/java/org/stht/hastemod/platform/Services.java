package org.stht.hastemod.platform;

import java.util.ServiceLoader;
import org.stht.hastemod.platform.services.IPlatformHelper;

public class Services {
    public static final IPlatformHelper PLATFORM = ServiceLoader.load(IPlatformHelper.class)
            .findFirst()
            .orElseThrow(() -> new NullPointerException("Failed to load service for " + IPlatformHelper.class.getName()));
}
